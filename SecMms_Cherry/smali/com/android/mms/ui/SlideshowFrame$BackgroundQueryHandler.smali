.class final Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SlideshowFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideshowFrame;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1300(Lcom/android/mms/ui/SlideshowFrame;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$1300(Lcom/android/mms/ui/SlideshowFrame;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    # getter for: Lcom/android/mms/ui/SlideshowFrame;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowFrame;->access$2000(Lcom/android/mms/ui/SlideshowFrame;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->close()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x25e4
        :pswitch_0
    .end packed-switch
.end method
