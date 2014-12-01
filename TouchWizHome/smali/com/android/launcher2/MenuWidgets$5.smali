.class Lcom/android/launcher2/MenuWidgets$5;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets;->prepareLoadWidgetPreviewsTask(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$5;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$5;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$400(Lcom/android/launcher2/MenuWidgets;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->wasCancelRequested()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cleanup(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$5;->this$0:Lcom/android/launcher2/MenuWidgets;

    const-string v1, "prepareLoadWidgetPreviewsTask"

    # invokes: Lcom/android/launcher2/MenuWidgets;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    invoke-static {v0, v1, p2}, Lcom/android/launcher2/MenuWidgets;->access$500(Lcom/android/launcher2/MenuWidgets;Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cleanup(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cleanup(Ljava/lang/String;Z)V

    throw v0
.end method
