.class Lcom/android/phone/TPhoneService$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TPhoneService;->registerScoverListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 4
    .param p1    # Lcom/samsung/android/sdk/cover/ScoverState;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v1, v1, Lcom/android/phone/TPhoneService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v1, v1, Lcom/android/phone/TPhoneService;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    const-string v2, "ignore TYPE_FLIP_COVER "

    # invokes: Lcom/android/phone/TPhoneService;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v3, :cond_3

    const-string v1, "TPhoneService"

    const-string v2, "Scover : State Open"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    # setter for: Lcom/android/phone/TPhoneService;->mCoverState:I
    invoke-static {v1, v3}, Lcom/android/phone/TPhoneService;->access$202(Lcom/android/phone/TPhoneService;I)I

    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    iget-object v2, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCoverState:I
    invoke-static {v2}, Lcom/android/phone/TPhoneService;->access$200(Lcom/android/phone/TPhoneService;)I

    move-result v2

    # invokes: Lcom/android/phone/TPhoneService;->sendCoverStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/phone/TPhoneService;->access$300(Lcom/android/phone/TPhoneService;I)V

    goto :goto_0

    :cond_3
    const-string v1, "TPhoneService"

    const-string v2, "Scover : State Close"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/TPhoneService;->mCoverState:I
    invoke-static {v1, v2}, Lcom/android/phone/TPhoneService;->access$202(Lcom/android/phone/TPhoneService;I)I

    goto :goto_1
.end method
