.class Lcom/android/incallui/CallButtonPresenter$1;
.super Ljava/lang/Object;
.source "CallButtonPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallButtonPresenter;->captureSurfaceImage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter$1;->this$0:Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter$1;->this$0:Lcom/android/incallui/CallButtonPresenter;

    # invokes: Lcom/android/incallui/CallButtonPresenter;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    invoke-static {v1}, Lcom/android/incallui/CallButtonPresenter;->access$000(Lcom/android/incallui/CallButtonPresenter;)Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter$1;->this$0:Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->sendLiveVideo()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter$1;->this$0:Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->sendStillImage()V

    goto :goto_0
.end method
