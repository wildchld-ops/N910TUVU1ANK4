.class final Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SmsViewFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsViewFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsViewFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SmsViewFrame;

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
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    # getter for: Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SmsViewFrame;->access$200(Lcom/android/mms/ui/SmsViewFrame;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    # getter for: Lcom/android/mms/ui/SmsViewFrame;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/SmsViewFrame;->access$200(Lcom/android/mms/ui/SmsViewFrame;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    # getter for: Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SmsViewFrame;->access$300(Lcom/android/mms/ui/SmsViewFrame;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x25e4
        :pswitch_0
    .end packed-switch
.end method
