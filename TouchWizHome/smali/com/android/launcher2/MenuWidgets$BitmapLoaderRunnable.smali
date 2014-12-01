.class Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapLoaderRunnable"
.end annotation


# instance fields
.field final immediate:Z

.field final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final layout:Lcom/android/launcher2/PagedViewGridLayout;

.field final page:I

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PagedViewGridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->page:I

    iput-object p2, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iput-boolean p5, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->immediate:Z

    iput-object p4, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->items:Ljava/util/List;

    invoke-virtual {p2, p0}, Lcom/android/launcher2/PagedViewGridLayout;->setBitmapLoaderRunnable(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/PagedViewGridLayout;->setBitmapLoaderRunnable(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/MenuWidgets;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iget v3, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->page:I

    # invokes: Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z
    invoke-static {v1, v2, v3}, Lcom/android/launcher2/MenuWidgets;->access$600(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->immediate:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iget v2, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->page:I

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgets;->access$700(Lcom/android/launcher2/MenuWidgets;)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I
    invoke-static {v5}, Lcom/android/launcher2/MenuWidgets;->access$800(Lcom/android/launcher2/MenuWidgets;)I

    move-result v5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;-><init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;IILcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/MenuWidgets;

    const-string v2, "syncWidgetPageItems"

    # invokes: Lcom/android/launcher2/MenuWidgets;->loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    invoke-static {v1, v2, v6, v0}, Lcom/android/launcher2/MenuWidgets;->access$300(Lcom/android/launcher2/MenuWidgets;Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/MenuWidgets;

    const-string v2, "syncWidgetPageItems"

    # invokes: Lcom/android/launcher2/MenuWidgets;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    invoke-static {v1, v2, v0}, Lcom/android/launcher2/MenuWidgets;->access$500(Lcom/android/launcher2/MenuWidgets;Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/MenuWidgets;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iget v3, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->page:I

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->items:Ljava/util/List;

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I
    invoke-static {v5}, Lcom/android/launcher2/MenuWidgets;->access$700(Lcom/android/launcher2/MenuWidgets;)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I
    invoke-static {v6}, Lcom/android/launcher2/MenuWidgets;->access$800(Lcom/android/launcher2/MenuWidgets;)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/MenuWidgets;

    iget v7, v7, Lcom/android/launcher2/PagedView;->mCellCountX:I

    # invokes: Lcom/android/launcher2/MenuWidgets;->prepareLoadWidgetPreviewsTask(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V
    invoke-static/range {v1 .. v7}, Lcom/android/launcher2/MenuWidgets;->access$900(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V

    goto :goto_0
.end method
