.class Lcom/android/phone/PhotoRingScreen$11;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhotoRingScreen;->onClick(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mCB:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$2400(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mContentType:I
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$2000(Lcom/android/phone/PhotoRingScreen;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_photoring_duty_show"

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mContentType:I
    invoke-static {v2}, Lcom/android/phone/PhotoRingScreen;->access$2000(Lcom/android/phone/PhotoRingScreen;)I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # invokes: Lcom/android/phone/PhotoRingScreen;->checkMobileData()Z
    invoke-static {v2}, Lcom/android/phone/PhotoRingScreen;->access$2600(Lcom/android/phone/PhotoRingScreen;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;
    invoke-static {v2}, Lcom/android/phone/PhotoRingScreen;->access$100(Lcom/android/phone/PhotoRingScreen;)Lcom/android/phone/PhotoRingMgr;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->uploadPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$000(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/phone/PhotoRingMgr;->uploadContentCall(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/PhotoRingScreen;->access$300(Lcom/android/phone/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->pMe:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/PhotoRingScreen;->access$300(Lcom/android/phone/PhotoRingScreen;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0908f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    # setter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2, v4}, Lcom/android/phone/PhotoRingScreen;->access$202(Lcom/android/phone/PhotoRingScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/phone/PhotoRingScreen;->access$200(Lcom/android/phone/PhotoRingScreen;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    :goto_2
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_photoring_duty_media_show"

    if-eqz v0, :cond_2

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # setter for: Lcom/android/phone/PhotoRingScreen;->mHasphotoringToDial:Z
    invoke-static {v2, v3}, Lcom/android/phone/PhotoRingScreen;->access$2302(Lcom/android/phone/PhotoRingScreen;Z)Z

    goto :goto_2

    :cond_4
    const-string v2, "support_mcid_with_alertinfo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/android/phone/PhotoRingScreen;->access$800(Lcom/android/phone/PhotoRingScreen;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhotoringUtil;->convertCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setRealtimeServiceInfoCall message without image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhotoRingScreen;->englog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/PhotoRingScreen;->access$900(Lcom/android/phone/PhotoRingScreen;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mPM:Lcom/android/phone/PhotoRingMgr;
    invoke-static {v2}, Lcom/android/phone/PhotoRingScreen;->access$100(Lcom/android/phone/PhotoRingScreen;)Lcom/android/phone/PhotoRingMgr;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # getter for: Lcom/android/phone/PhotoRingScreen;->mNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/PhotoRingScreen;->access$1000(Lcom/android/phone/PhotoRingScreen;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/PhotoRingScreen;->makeNumber(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/PhotoRingScreen;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v7}, Lcom/android/phone/PhotoRingMgr;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/phone/PhotoRingScreen$11;->this$0:Lcom/android/phone/PhotoRingScreen;

    # invokes: Lcom/android/phone/PhotoRingScreen;->placeCallIncludeMessage()V
    invoke-static {v2}, Lcom/android/phone/PhotoRingScreen;->access$1600(Lcom/android/phone/PhotoRingScreen;)V

    goto :goto_2
.end method
