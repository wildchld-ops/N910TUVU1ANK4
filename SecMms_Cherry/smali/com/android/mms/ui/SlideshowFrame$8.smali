.class Lcom/android/mms/ui/SlideshowFrame$8;
.super Ljava/lang/Object;
.source "SlideshowFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowFrame;->handleEvent(Lorg/w3c/dom/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowFrame;

.field final synthetic val$event:Lorg/w3c/dom/events/Event;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowFrame;Lorg/w3c/dom/events/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$8;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowFrame$8;->val$event:Lorg/w3c/dom/events/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$8;->val$event:Lorg/w3c/dom/events/Event;

    invoke-interface {v1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimlDocumentEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$8;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # invokes: Lcom/android/mms/ui/SlideshowFrame;->releaseWakeLock()V
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$1500(Lcom/android/mms/ui/SlideshowFrame;)V

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$8;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$500(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$8;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$500(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->resetLocation()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$8;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$700(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$8;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$700(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->updateToPlayButton()V

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$8;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$700(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$8;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mIsPreview:Z
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$1900(Lcom/android/mms/ui/SlideshowFrame;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$8;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->close()V

    :cond_1
    return-void
.end method
