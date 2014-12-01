.class Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;
.super Landroid/os/Handler;
.source "IncomingCallEasyImageWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;


# direct methods
.method constructor <init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    const-string v1, "handleMessage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->log(Ljava/lang/String;Z)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$000(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I
    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$100(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # setter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I
    invoke-static {v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$002(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$200(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I
    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # setter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I
    invoke-static {v0, v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$202(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$400(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I
    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$100(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # operator++ for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I
    invoke-static {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$008(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$500(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I
    invoke-static {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # operator++ for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I
    invoke-static {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$208(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;->access$600(Lcom/android/incallui/widget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
