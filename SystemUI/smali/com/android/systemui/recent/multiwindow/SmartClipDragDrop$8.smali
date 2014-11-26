.class Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;
.super Ljava/lang/Object;
.source "SmartClipDragDrop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getSmartClipData(Landroid/view/View;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

.field final synthetic val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iput-object p2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    iput-object p3, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v5, v8}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->dump(Z)Z

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    # invokes: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getTextMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$700(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    # invokes: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getUrlMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$800(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    # invokes: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->getTextSelectionMetaData(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$900(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getWindowLayer()I

    move-result v1

    const-string v5, "SmartClipDragDrop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTouch : The target layer of dragging is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    const-string v5, "SmartClipDragDrop"

    const-string v6, "onTouch : text selection is extracted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    const/4 v7, 0x0

    # invokes: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v3, v7, v1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$1000(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    # invokes: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->stopSmartClipDragDropThread()V
    invoke-static {v5}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$1200(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V

    return-void

    :cond_0
    if-eqz v2, :cond_1

    const-string v5, "SmartClipDragDrop"

    const-string v6, "onTouch : text is extracted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v2, v0, v1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$1000(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    const-string v5, "youtube"

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_2

    const-string v5, "SmartClipDragDrop"

    const-string v6, "onTouch : youtube url will be pasted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v4, v0, v1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$1000(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto :goto_0

    :cond_2
    const-string v5, "com.android.chrome"

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v6}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAppPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v8, :cond_4

    if-eqz v4, :cond_3

    const-string v5, "SmartClipDragDrop"

    const-string v6, "onTouch : google chrome url will be pasted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v4, v0, v1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$1000(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto :goto_0

    :cond_3
    const-string v5, "SmartClipDragDrop"

    const-string v6, "onTouch : google chrome url is empty. stop the service"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->stopService()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_5

    const-string v5, "SmartClipDragDrop"

    const-string v6, "onTouch : no text meta data -> image will be pasted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->startImageDrag(Landroid/view/View;Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v0, v1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$1100(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Rect;I)V

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    const-string v5, "SmartClipDragDrop"

    const-string v6, "onTouch : url will be pasted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->val$view:Landroid/view/View;

    # invokes: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->startTextDrag(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V
    invoke-static {v5, v6, v4, v0, v1}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$1000(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Ljava/lang/String;Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    :cond_6
    const-string v5, "SmartClipDragDrop"

    const-string v6, "onTouch : there is no data to drag&drop"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->stopService()V

    goto/16 :goto_0

    :cond_7
    const-string v5, "SmartClipDragDrop"

    const-string v6, "onTouch : repository is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$8;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->stopService()V

    goto/16 :goto_0
.end method
