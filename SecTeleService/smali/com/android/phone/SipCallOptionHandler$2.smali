.class Lcom/android/phone/SipCallOptionHandler$2;
.super Ljava/lang/Object;
.source "SipCallOptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SipCallOptionHandler;


# direct methods
.method constructor <init>(Lcom/android/phone/SipCallOptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # invokes: Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$100(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SipCallOptionHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "primary SIP URI is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v1

    # invokes: Lcom/android/phone/SipCallOptionHandler;->createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V
    invoke-static {v0, v1}, Lcom/android/phone/SipCallOptionHandler;->access$200(Lcom/android/phone/SipCallOptionHandler;Landroid/net/sip/SipProfile;)V

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.phone.extra.SIP_PHONE_URI"

    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v2}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$400(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$500(Lcom/android/phone/SipCallOptionHandler;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSharedPreferences;->setPrimaryAccount(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$600(Lcom/android/phone/SipCallOptionHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # getter for: Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # invokes: Lcom/android/phone/SipCallOptionHandler;->initiateOutgoingCall()V
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$700(Lcom/android/phone/SipCallOptionHandler;)V

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler$2;->this$0:Lcom/android/phone/SipCallOptionHandler;

    # invokes: Lcom/android/phone/SipCallOptionHandler;->startDelayedFinish()V
    invoke-static {v0}, Lcom/android/phone/SipCallOptionHandler;->access$800(Lcom/android/phone/SipCallOptionHandler;)V

    goto :goto_0
.end method
