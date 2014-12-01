.class Lcom/android/phone/PhotoRingScreen$5;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Lcom/android/phone/ICallMessageNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhotoRingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhotoRingScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/PhotoRingScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/android/phone/CallMessageConstants$RequestType;Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Lcom/android/phone/CallMessageConstants$RequestType;
    .param p2    # Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ICallMessageNetworkListener is called ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") on PhotoRingScreen"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/PhotoRingScreen$16;->$SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I

    invoke-virtual {p1}, Lcom/android/phone/CallMessageConstants$RequestType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const-string v7, "Recieved etc type: not handled here"

    # invokes: Lcom/android/phone/PhotoRingScreen;->englog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$900(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    const-string v6, "result"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "0019"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v7, 0x1

    # setter for: Lcom/android/phone/PhotoRingScreen;->bUnregierShowme:Z
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$502(Lcom/android/phone/PhotoRingScreen;Z)Z

    :cond_1
    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Recieved GET_CONTENT_SPEC_CALL:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/phone/PhotoRingScreen;->DBG:Z
    invoke-static {}, Lcom/android/phone/PhotoRingScreen;->access$600()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v6}, Lcom/android/phone/PhotoRingScreen;->access$400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/phone/PhotoringUtil;->setContentSpecFromBundle(Landroid/os/Bundle;)V

    sget-object v6, Lcom/android/phone/PhotoringUtil;->contentSpec:Lcom/android/phone/PhotoringUtil$ContentSpec;

    iget v6, v6, Lcom/android/phone/PhotoringUtil$ContentSpec;->video_editing_duration:I

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/phone/PhotoringUtil;->contentSpec:Lcom/android/phone/PhotoringUtil$ContentSpec;

    iget v6, v6, Lcom/android/phone/PhotoringUtil$ContentSpec;->video_editing_duration:I

    mul-int/lit16 v6, v6, 0x3e8

    sput v6, Lcom/android/phone/PhotoRingScreen;->VIDEO_DURATION_LIMIT:I

    goto :goto_0

    :cond_2
    const-string v6, "bundle not null"

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$202(Lcom/android/phone/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_3
    if-eqz p2, :cond_7

    const-string v6, "result"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Recieved UPLOAD_CONTENT_CALL:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/phone/PhotoRingScreen;->DBG:Z
    invoke-static {}, Lcom/android/phone/PhotoRingScreen;->access$600()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v7, v6}, Lcom/android/phone/PhotoRingScreen;->access$400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    const-string v6, "0000"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const-string v7, "content_url"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/phone/PhotoRingScreen;->contentUrl:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$702(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->contentUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$700(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhotoringUtil;->setContentUrl(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$800(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call setRealtimeServiceInfoCall message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/PhotoRingScreen;->englog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$900(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$100(Lcom/android/phone/PhotoRingScreen;)Lcom/android/phone/PhotoRingMgr;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/PhotoRingScreen;->access$1000(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/PhotoRingScreen;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->contentUrl:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/PhotoRingScreen;->access$700(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v2, v8}, Lcom/android/phone/PhotoRingMgr;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object v6, v5

    goto :goto_2

    :cond_5
    const-string v6, "0600"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "support_mcid_with_alertinfo"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const v7, 0x7f090a80

    iget-object v8, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v8}, Lcom/android/phone/PhotoRingScreen;->access$1200(Lcom/android/phone/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v8

    # invokes: Lcom/android/phone/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v6, v7, v8}, Lcom/android/phone/PhotoRingScreen;->access$1300(Lcom/android/phone/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const v7, 0x7f09080f

    iget-object v8, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v8}, Lcom/android/phone/PhotoRingScreen;->access$1200(Lcom/android/phone/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v8

    # invokes: Lcom/android/phone/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v6, v7, v8}, Lcom/android/phone/PhotoRingScreen;->access$1300(Lcom/android/phone/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    if-nez p2, :cond_8

    const/4 v6, 0x0

    :goto_3
    # invokes: Lcom/android/phone/PhotoRingScreen;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v7, v6}, Lcom/android/phone/PhotoRingScreen;->access$1400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v6, "errMsg"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :pswitch_2
    if-eqz p2, :cond_d

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Recieved SET_REALTIME_SERVICEINFO_CALL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/PhotoRingScreen;->englog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$900(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    const-string v6, "result"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const-string v7, "chg_url"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/phone/PhotoRingScreen;->chgUrl:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$1502(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->chgUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$1500(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhotoringUtil;->setChgUrl(Ljava/lang/String;)V

    const-string v6, "0000"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$202(Lcom/android/phone/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_9
    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # invokes: Lcom/android/phone/PhotoRingScreen;->placeCallIncludeMessage()V
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$1600(Lcom/android/phone/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_a
    const-string v6, "0020"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "support_mcid_with_alertinfo"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-virtual {v7}, Lcom/android/phone/PhotoRingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090a8a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/PhotoRingScreen;->showErrorDismissDialog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$1700(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v6, "0600"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "support_mcid_with_alertinfo"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const v7, 0x7f090a80

    iget-object v8, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v8}, Lcom/android/phone/PhotoRingScreen;->access$1200(Lcom/android/phone/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v8

    # invokes: Lcom/android/phone/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v6, v7, v8}, Lcom/android/phone/PhotoRingScreen;->access$1300(Lcom/android/phone/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const v7, 0x7f09080f

    iget-object v8, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->clickListenerToUpload:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v8}, Lcom/android/phone/PhotoRingScreen;->access$1200(Lcom/android/phone/PhotoRingScreen;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v8

    # invokes: Lcom/android/phone/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v6, v7, v8}, Lcom/android/phone/PhotoRingScreen;->access$1300(Lcom/android/phone/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    if-nez p2, :cond_e

    const/4 v6, 0x0

    :goto_4
    # invokes: Lcom/android/phone/PhotoRingScreen;->showErrorDialog(Ljava/lang/String;)V
    invoke-static {v7, v6}, Lcom/android/phone/PhotoRingScreen;->access$1400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v6, "errMsg"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :pswitch_3
    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$202(Lcom/android/phone/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_f
    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->needDownContent:Z
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$1800(Lcom/android/phone/PhotoRingScreen;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "dl_result"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/PhotoRingScreen;->needDownContent:Z
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$1802(Lcom/android/phone/PhotoRingScreen;Z)Z

    if-eqz v4, :cond_13

    const-string v6, "dl_path"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->bShowOnly:Z
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$1900(Lcom/android/phone/PhotoRingScreen;)Z

    move-result v6

    if-eqz v6, :cond_11

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/phone/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "image/*"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-virtual {v6, v1}, Lcom/android/phone/PhotoRingScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-virtual {v6}, Lcom/android/phone/PhotoRingScreen;->finish()V

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/PhotoRingScreen;->bShowOnly:Z
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$1902(Lcom/android/phone/PhotoRingScreen;Z)Z

    goto/16 :goto_0

    :cond_10
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "video/*"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "from_photoring_to_videoplayer"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v6, "PhotoRingScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t show image/video "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_11
    invoke-static {v3}, Lcom/android/phone/PhotoringUtil;->isImagePath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const-string v7, "/data/data/com.android.phone/files/photoring_data.png"

    # setter for: Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$002(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v7, 0x1

    # setter for: Lcom/android/phone/PhotoRingScreen;->mContentType:I
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$2002(Lcom/android/phone/PhotoRingScreen;I)I

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # invokes: Lcom/android/phone/PhotoRingScreen;->setImageToView()V
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$2100(Lcom/android/phone/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_12
    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$300(Lcom/android/phone/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "photoring_data.png"

    invoke-static {v6, v3, v7}, Lcom/android/phone/PhotoringUtil;->setVideoFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # setter for: Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/android/phone/PhotoRingScreen;->access$002(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const/4 v7, 0x2

    # setter for: Lcom/android/phone/PhotoRingScreen;->mContentType:I
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$2002(Lcom/android/phone/PhotoRingScreen;I)I

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUriVideos : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhotoRingScreen;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/PhotoRingScreen;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/PhotoRingScreen;->access$400(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    # invokes: Lcom/android/phone/PhotoRingScreen;->setImageToView()V
    invoke-static {v6}, Lcom/android/phone/PhotoRingScreen;->access$2100(Lcom/android/phone/PhotoRingScreen;)V

    goto/16 :goto_0

    :cond_13
    iget-object v6, p0, Lcom/android/phone/PhotoRingScreen$5;->this$0:Lcom/android/phone/PhotoRingScreen;

    const v7, 0x7f090819

    new-instance v8, Lcom/android/phone/PhotoRingScreen$5$1;

    invoke-direct {v8, p0}, Lcom/android/phone/PhotoRingScreen$5$1;-><init>(Lcom/android/phone/PhotoRingScreen$5;)V

    # invokes: Lcom/android/phone/PhotoRingScreen;->showRetryDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v6, v7, v8}, Lcom/android/phone/PhotoRingScreen;->access$1300(Lcom/android/phone/PhotoRingScreen;ILandroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
