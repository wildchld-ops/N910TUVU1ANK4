.class Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$1;
.super Ljava/lang/Object;
.source "PersonalizationRequest.java"

# interfaces
.implements Lcom/touchtype_fluency/util/CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->mergeModels(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$1;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1$1;->this$2:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;->this$1:Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    # setter for: Lcom/touchtype/personalizer/PersonalizationRequest;->mMergeResult:Z
    invoke-static {v0, p1}, Lcom/touchtype/personalizer/PersonalizationRequest;->access$102(Lcom/touchtype/personalizer/PersonalizationRequest;Z)Z

    return-void
.end method
