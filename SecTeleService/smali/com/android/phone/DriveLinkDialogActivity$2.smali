.class Lcom/android/phone/DriveLinkDialogActivity$2;
.super Landroid/os/Handler;
.source "DriveLinkDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DriveLinkDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DriveLinkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/DriveLinkDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v6, 0x0

    const v4, 0x7f090a2e

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    iget-object v1, v1, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    iget-object v1, v1, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v1}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    iput-object v6, v1, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    invoke-virtual {v1}, Lcom/android/phone/DriveLinkDialogActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    # getter for: Lcom/android/phone/DriveLinkDialogActivity;->mIsPrivate:Z
    invoke-static {v1}, Lcom/android/phone/DriveLinkDialogActivity;->access$000(Lcom/android/phone/DriveLinkDialogActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    const v3, 0x7f09000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "ims_ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    const v3, 0x7f090a2d

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    # getter for: Lcom/android/phone/DriveLinkDialogActivity;->mIsNumberSaved:Z
    invoke-static {v1}, Lcom/android/phone/DriveLinkDialogActivity;->access$100(Lcom/android/phone/DriveLinkDialogActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    # getter for: Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/DriveLinkDialogActivity;->access$200(Lcom/android/phone/DriveLinkDialogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DriveLinkDialogActivity;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3, v0}, Lcom/android/phone/CallTextToSpeech;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/android/phone/CallTextToSpeech;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    # getter for: Lcom/android/phone/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/phone/DriveLinkDialogActivity;->access$300(Lcom/android/phone/DriveLinkDialogActivity;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    # setter for: Lcom/android/phone/DriveLinkDialogActivity;->mPreviousLocale:Ljava/util/Locale;
    invoke-static {v1, v6}, Lcom/android/phone/DriveLinkDialogActivity;->access$302(Lcom/android/phone/DriveLinkDialogActivity;Ljava/util/Locale;)Ljava/util/Locale;

    goto/16 :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    # getter for: Lcom/android/phone/DriveLinkDialogActivity;->mIsNumberSaved:Z
    invoke-static {v1}, Lcom/android/phone/DriveLinkDialogActivity;->access$100(Lcom/android/phone/DriveLinkDialogActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    # getter for: Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/DriveLinkDialogActivity;->access$200(Lcom/android/phone/DriveLinkDialogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DriveLinkDialogActivity;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    # getter for: Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/DriveLinkDialogActivity;->access$200(Lcom/android/phone/DriveLinkDialogActivity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/phone/DriveLinkDialogActivity$2;->this$0:Lcom/android/phone/DriveLinkDialogActivity;

    # getter for: Lcom/android/phone/DriveLinkDialogActivity;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/DriveLinkDialogActivity;->access$200(Lcom/android/phone/DriveLinkDialogActivity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
