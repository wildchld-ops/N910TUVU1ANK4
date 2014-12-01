.class Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "PersonalizationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

.field final synthetic val$tempFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->val$tempFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype/personalizer/PersonalizationListener;->merging()V

    :try_start_0
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->val$tempFile:Ljava/io/File;

    # invokes: Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->mergeModels(Ljava/io/File;)Z
    invoke-static {v1, v2}, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->access$700(Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;Ljava/io/File;)Z

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype/personalizer/PersonalizationListener;->succeeded()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype/personalizer/PersonalizationListener;->failed()V

    goto :goto_0
.end method

.method public onProgress(II)V
    .locals 3

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$2;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mListener:Lcom/touchtype/personalizer/PersonalizationListener;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$200(Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/touchtype/personalizer/PersonalizationListener;->downloadProgress(II)V

    # getter for: Lcom/touchtype/personalizer/PersonalizationRequest;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
