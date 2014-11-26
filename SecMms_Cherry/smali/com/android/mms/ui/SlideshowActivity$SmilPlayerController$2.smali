.class Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

.field final synthetic val$model:Lcom/android/mms/model/SlideshowModel;

.field final synthetic val$showModel:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->val$model:Lcom/android/mms/model/SlideshowModel;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isRotating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    # getter for: Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->access$1000(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    # getter for: Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->access$1000(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    # getter for: Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->access$1000(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)Lcom/android/mms/dom/smil/SmilPlayer;

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

.method private printSmilDocXml(Lorg/w3c/dom/smil/SMILDocument;)V
    .locals 6
    .param p1    # Lorg/w3c/dom/smil/SMILDocument;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, v2}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    const-string v3, "Mms/SmilPlayerController"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_2
    throw v3

    :catch_0
    move-exception v0

    const-string v4, "Mms/SmilPlayerController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v3, "Mms/SmilPlayerController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_1
.end method

.method private showSlides(Lcom/android/mms/model/SlideshowModel;)V
    .locals 5
    .param p1    # Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    # getter for: Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->access$1000(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->reload()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsPlayerControllerMulti;->setPageMoveButton(Z)V

    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v0

    :cond_2
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_3

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1600(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    # getter for: Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayerStart:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->access$1500(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    # invokes: Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->startSmilPlayer()V
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->access$900(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    # invokes: Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->startSmilPlayer()V
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->access$900(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Mms/SmilPlayerController"

    const-string v1, "SlideShowActivityRunnable:Run"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    new-instance v1, Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v1}, Lcom/android/mms/dom/smil/SmilPlayer;-><init>()V

    # setter for: Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->access$1002(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1100(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    # getter for: Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->access$1000(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setSmilPlayer(Lcom/android/mms/dom/smil/SmilPlayer;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerControllerMulti;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerControllerMulti;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # invokes: Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1200(Lcom/android/mms/ui/SlideshowActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->val$model:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v1

    # setter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1302(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1300(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    const-string v1, "par"

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # invokes: Lcom/android/mms/ui/SlideshowActivity;->addEventListenerOfSmilDoc()V
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1400(Lcom/android/mms/ui/SlideshowActivity;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    # getter for: Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->access$1000(Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->this$1:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v1, v1, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1300(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/dom/smil/SmilPlayer;->init(Lorg/w3c/dom/smil/ElementTime;)V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->val$showModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController$2;->showSlides(Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method
