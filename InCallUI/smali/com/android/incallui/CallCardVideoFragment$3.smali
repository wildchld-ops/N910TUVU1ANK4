.class Lcom/android/incallui/CallCardVideoFragment$3;
.super Ljava/lang/Object;
.source "CallCardVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardVideoFragment;

.field touchDownOn:I


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardVideoFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/CallCardVideoFragment$3;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/CallCardVideoFragment$3;->touchDownOn:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$3;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch : view - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$3;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardFragment;->isDialpadVisible()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v3, v2

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$3;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardVideoFragment;->togglePrimaryCallBanner()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
