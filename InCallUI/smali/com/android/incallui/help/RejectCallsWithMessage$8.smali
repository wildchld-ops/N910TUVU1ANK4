.class Lcom/android/incallui/help/RejectCallsWithMessage$8;
.super Landroid/os/Handler;
.source "RejectCallsWithMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/RejectCallsWithMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/RejectCallsWithMessage;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;

    const-wide/16 v6, 0xc8

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "RejectCallsWithMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1100(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v4

    new-instance v1, Lcom/android/incallui/help/RejectCallsWithMessage$8$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$8$1;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage$8;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1100(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v5

    new-instance v1, Lcom/android/incallui/help/RejectCallsWithMessage$8$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$8$2;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage$8;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpList:[Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1100(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageView:[Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)[Landroid/widget/ImageView;

    move-result-object v0

    aget-object v0, v0, v3

    new-instance v1, Lcom/android/incallui/help/RejectCallsWithMessage$8$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/help/RejectCallsWithMessage$8$3;-><init>(Lcom/android/incallui/help/RejectCallsWithMessage$8;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mCurrentPeriodMarkIndex:I
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1300(Lcom/android/incallui/help/RejectCallsWithMessage;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMarkList:[I
    invoke-static {v1}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1400(Lcom/android/incallui/help/RejectCallsWithMessage;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # setter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mCurrentPeriodMarkIndex:I
    invoke-static {v0, v3}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1302(Lcom/android/incallui/help/RejectCallsWithMessage;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1500(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMark:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1500(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mPeriodMarkList:[I
    invoke-static {v1}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1400(Lcom/android/incallui/help/RejectCallsWithMessage;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/help/RejectCallsWithMessage$8;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # operator++ for: Lcom/android/incallui/help/RejectCallsWithMessage;->mCurrentPeriodMarkIndex:I
    invoke-static {v2}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1308(Lcom/android/incallui/help/RejectCallsWithMessage;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const/16 v0, 0x78

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x78 -> :sswitch_4
    .end sparse-switch
.end method
