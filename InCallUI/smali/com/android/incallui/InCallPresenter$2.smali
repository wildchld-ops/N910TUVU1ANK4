.class Lcom/android/incallui/InCallPresenter$2;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/motion/CallAirMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveSweep(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V
    .locals 12
    .param p1    # Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "InCallPresenter"

    const-string v11, "onReceiveSweep"

    invoke-static {v10, v11, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/incallui/AnswerPresenter;->startAirMotionAnimation(Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    sget-object v10, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP2:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne p1, v10, :cond_2

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v7

    sget v10, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    sget v11, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    and-int/2addr v11, v7

    if-ne v10, v11, :cond_3

    move v4, v8

    :goto_0
    sget v10, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    sget v11, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    and-int/2addr v11, v7

    if-ne v10, v11, :cond_4

    move v5, v8

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    # invokes: Lcom/android/incallui/InCallPresenter;->checkEasyModeFirstCallEnd()Z
    invoke-static {v8}, Lcom/android/incallui/InCallPresenter;->access$200(Lcom/android/incallui/InCallPresenter;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/incallui/AnswerPresenter;->getInstance()Lcom/android/incallui/AnswerPresenter;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(I)V

    :goto_2
    iget-object v8, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;
    invoke-static {v8}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/motion/CallAirMotion;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/InCallPresenter$2;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallAirMotion:Lcom/android/incallui/motion/CallAirMotion;
    invoke-static {v8}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/motion/CallAirMotion;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/motion/CallAirMotion;->resetTime()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "com.android.phone"

    const-string v9, "WAVE"

    invoke-static {v3, v8, v9}, Lcom/android/incallui/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v4, v9

    goto :goto_0

    :cond_4
    move v5, v9

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/incallui/CallCommandClient;->answerCallWithSpeaker(I)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    goto :goto_2
.end method
