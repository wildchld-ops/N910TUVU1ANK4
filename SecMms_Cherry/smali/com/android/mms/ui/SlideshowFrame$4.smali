.class Lcom/android/mms/ui/SlideshowFrame$4;
.super Ljava/lang/Object;
.source "SlideshowFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowFrame;->SlideShowFrameRunnable(Lcom/android/mms/model/SlideshowModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowFrame;

.field final synthetic val$model:Lcom/android/mms/model/SlideshowModel;

.field final synthetic val$showModel:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowFrame$4;->val$model:Lcom/android/mms/model/SlideshowModel;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowFrame$4;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRotating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$400(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$400(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$400(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "Mms/SlideshowFrame"

    const-string v5, "SlideShowFrameRunnable:Run"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    new-instance v5, Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v5}, Lcom/android/mms/dom/smil/SmilPlayer;-><init>()V

    # setter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4, v5}, Lcom/android/mms/ui/SlideshowFrame;->access$402(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$500(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v5}, Lcom/android/mms/ui/SlideshowFrame;->access$400(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SlideshowPresenter;->setSmilPlayer(Lcom/android/mms/dom/smil/SmilPlayer;)V

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # invokes: Lcom/android/mms/ui/SlideshowFrame;->initMediaController()V
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$600(Lcom/android/mms/ui/SlideshowFrame;)V

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v4, v8}, Lcom/android/mms/ui/SlideshowFrame;->onWindowFocusChanged(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$700(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # invokes: Lcom/android/mms/ui/SlideshowFrame;->updateControlButtons()V
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$800(Lcom/android/mms/ui/SlideshowFrame;)V

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$900(Lcom/android/mms/ui/SlideshowFrame;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    const/4 v5, 0x0

    # setter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v4, v5}, Lcom/android/mms/ui/SlideshowFrame;->access$902(Lcom/android/mms/ui/SlideshowFrame;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowFrame$4;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v5

    # setter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v4, v5}, Lcom/android/mms/ui/SlideshowFrame;->access$902(Lcom/android/mms/ui/SlideshowFrame;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$900(Lcom/android/mms/ui/SlideshowFrame;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    const-string v4, "Mms/SlideshowFrame"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$900(Lcom/android/mms/ui/SlideshowFrame;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v4

    const-string v5, "par"

    invoke-interface {v4, v5}, Lorg/w3c/dom/smil/SMILElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mFirstLaunched:Z
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$1000(Lcom/android/mms/ui/SlideshowFrame;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$900(Lcom/android/mms/ui/SlideshowFrame;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/events/EventTarget;

    const-string v5, "SimlDocumentEnd"

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-interface {v4, v5, v6, v7}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$400(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v5}, Lcom/android/mms/ui/SlideshowFrame;->access$900(Lcom/android/mms/ui/SlideshowFrame;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/dom/smil/SmilPlayer;->init(Lorg/w3c/dom/smil/ElementTime;)V

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mFirstLaunched:Z
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$1000(Lcom/android/mms/ui/SlideshowFrame;)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v4, "Mms/SlideshowFrame"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_3
    throw v4

    :catch_1
    move-exception v0

    const-string v5, "Mms/SlideshowFrame"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # setter for: Lcom/android/mms/ui/SlideshowFrame;->mFirstLaunched:Z
    invoke-static {v4, v7}, Lcom/android/mms/ui/SlideshowFrame;->access$1002(Lcom/android/mms/ui/SlideshowFrame;Z)Z

    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowFrame$4;->isRotating()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$400(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-ne v4, v8, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$700(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$700(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/mms/ui/MmsPlayerController;->setPageMoveButton(Z)V

    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v1

    :cond_9
    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_a

    if-lez v1, :cond_a

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$1200(Lcom/android/mms/ui/SlideshowFrame;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayerStart:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/mms/ui/SlideshowFrame;->access$1100(Lcom/android/mms/ui/SlideshowFrame;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # invokes: Lcom/android/mms/ui/SlideshowFrame;->accquireWakeLock()V
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$300(Lcom/android/mms/ui/SlideshowFrame;)V

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$400(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # invokes: Lcom/android/mms/ui/SlideshowFrame;->accquireWakeLock()V
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$300(Lcom/android/mms/ui/SlideshowFrame;)V

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame$4;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v4}, Lcom/android/mms/ui/SlideshowFrame;->access$400(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->play()V

    goto/16 :goto_1

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto/16 :goto_2
.end method
