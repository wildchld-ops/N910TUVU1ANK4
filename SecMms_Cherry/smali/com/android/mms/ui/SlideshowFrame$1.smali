.class Lcom/android/mms/ui/SlideshowFrame$1;
.super Landroid/database/ContentObserver;
.source "SlideshowFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowFrame;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$1;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$1;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$000(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$1;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$000(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$1;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$100(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$1;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$000(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$1;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$100(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/ViewTitleHeader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame$1;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/SlideshowFrame;->access$000(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setFailedeIcon(Z)V

    :cond_0
    return-void
.end method
