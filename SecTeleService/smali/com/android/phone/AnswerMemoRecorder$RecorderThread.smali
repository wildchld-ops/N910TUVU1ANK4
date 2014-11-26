.class Lcom/android/phone/AnswerMemoRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "AnswerMemoRecorder.java"

# interfaces
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;
.implements Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AnswerMemoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AnswerMemoRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mAnswerMemoSaveUri:Landroid/net/Uri;

.field private mFileName:Ljava/lang/String;

.field private mHiddenFilePath:Ljava/lang/String;

.field private mSaveFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/AnswerMemoRecorder;


# direct methods
.method private isPhoneNumberChar(C)Z
    .locals 1
    .param p1    # C

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->isPhoneNumberChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public cancelRecording()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->releaseMediaRecorder()V

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mIsRecording:Z
    invoke-static {v1, v2}, Lcom/android/phone/AnswerMemoRecorder;->access$602(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v2, "RecorderThread : cancelRecording"

    const/4 v3, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v1, Lcom/android/phone/AnswerMemoRecorder$RecorderThread$FileEndWithFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".m4a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/AnswerMemoRecorder$RecorderThread;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/phone/AnswerMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createNewFileName()Ljava/lang/String;
    .locals 7

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v5, "createNewFileName()"

    const/4 v6, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0909bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->access$1200(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->access$1200(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createNewFileName() mCallerNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/AnswerMemoRecorder;->access$1200(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/AnswerMemoRecorder;->access$1400(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)V

    :goto_0
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->access$1600(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->access$1600(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createNewFileName() getCallerNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v6}, Lcom/android/phone/AnswerMemoRecorder;->access$1600(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/AnswerMemoRecorder;->access$1400(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public onError(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 3
    .param p1    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    return-void
.end method

.method public onInfo(Lcom/sec/android/secmediarecorder/SecMediaRecorder;II)V
    .locals 4
    .param p1    # Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    .param p2    # I
    .param p3    # I

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max duration reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max filesize reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mRecordedDurationMSec:I
    invoke-static {v0, p3}, Lcom/android/phone/AnswerMemoRecorder;->access$1502(Lcom/android/phone/AnswerMemoRecorder;I)I

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->access$500(Lcom/android/phone/AnswerMemoRecorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_0
        0x321 -> :sswitch_1
        0x385 -> :sswitch_2
    .end sparse-switch
.end method

.method public prepareRecording()Z
    .locals 10

    const-wide/16 v8, 0x64

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->releaseMediaRecorder()V

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/android/phone/AnswerMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecorderThread : answerMemoDir dirCreated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/phone/AnswerMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".answermemo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v6, Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    invoke-direct {v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;-><init>()V

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5, v6}, Lcom/android/phone/AnswerMemoRecorder;->access$902(Lcom/android/phone/AnswerMemoRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSource(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFormat(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->getAvailableStorage()J
    invoke-static {v6}, Lcom/android/phone/AnswerMemoRecorder;->access$1000(Lcom/android/phone/AnswerMemoRecorder;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxFileSize(J)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const v6, 0x2ca2068

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setMaxDuration(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const v6, 0x1f400

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioChannels(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const v6, 0xac44

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioSamplingRate(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAudioEncoder(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setDurationInterval(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const-wide/16 v6, 0x300

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setFileSizeInterval(J)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setAuthor(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->prepare()V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v6, "RecorderThread : prepareRecording"

    const/4 v7, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    :goto_0
    return v3

    :catch_0
    move-exception v1

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecorderThread : IOException Occured"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    move v3, v4

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecorderThread : Illegal State Exception Occured"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    move v3, v4

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RecorderThread : Illegal Argument Exception Exception Occured"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    move v3, v4

    goto :goto_0
.end method

.method public releaseMediaRecorder()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v1, "RecorderThread : releaseMediaRecorder..."

    const/4 v2, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnErrorListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->setOnInfoListener(Lcom/sec/android/secmediarecorder/SecMediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->reset()V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->release()V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v0, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$902(Lcom/android/phone/AnswerMemoRecorder;Lcom/sec/android/secmediarecorder/SecMediaRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v1, "RecorderThread : run"

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->prepareRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->startRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "feature_wake_lock_during_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->PARTIAL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->requestVoiceRecordingWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->access$500(Lcom/android/phone/AnswerMemoRecorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mIsPreparing:Z
    invoke-static {v0, v2}, Lcom/android/phone/AnswerMemoRecorder;->access$802(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v1, "RecorderThread : startRecording failed"

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mIsRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/AnswerMemoRecorder;->access$602(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mIsPaused:Z
    invoke-static {v0, v2}, Lcom/android/phone/AnswerMemoRecorder;->access$702(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v1, "RecorderThread : prepareRecording failed"

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mIsRecording:Z
    invoke-static {v0, v2}, Lcom/android/phone/AnswerMemoRecorder;->access$602(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mIsPaused:Z
    invoke-static {v0, v2}, Lcom/android/phone/AnswerMemoRecorder;->access$702(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    goto :goto_0
.end method

.method public startRecording()Z
    .locals 5

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const/4 v3, 0x1

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mIsRecording:Z
    invoke-static {v2, v3}, Lcom/android/phone/AnswerMemoRecorder;->access$602(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v2}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v2}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mStartRecordTime:J
    invoke-static {v2, v3, v4}, Lcom/android/phone/AnswerMemoRecorder;->access$1102(Lcom/android/phone/AnswerMemoRecorder;J)J

    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v3, "RecorderThread : startRecording"

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopRecording()Z
    .locals 15

    :try_start_0
    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v12}, Lcom/android/phone/AnswerMemoRecorder;->access$900(Lcom/android/phone/AnswerMemoRecorder;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->stop()V

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const/4 v13, 0x0

    # setter for: Lcom/android/phone/AnswerMemoRecorder;->mIsRecording:Z
    invoke-static {v12, v13}, Lcom/android/phone/AnswerMemoRecorder;->access$602(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->releaseMediaRecorder()V

    const-string v12, "feature_wake_lock_during_call_recording"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    sget-object v13, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v12, v13}, Lcom/android/phone/PhoneGlobals;->requestVoiceRecordingWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v13, "RecorderThread : stopRecording"

    const/4 v14, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/android/phone/AnswerMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".m4a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x0

    :try_start_1
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x9

    invoke-virtual {v8, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v3, v12

    const-wide/16 v12, 0x3e8

    cmp-long v12, v3, v12

    if-gez v12, :cond_2

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v13, "RecorderThread : fileDuration > 1000, failed to save record"

    const/4 v14, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v12, 0x0

    :goto_0
    return v12

    :catch_0
    move-exception v2

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecorderThread : mRecorder.stop() - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    const-string v12, "feature_wake_lock_during_call_recording"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    sget-object v13, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v12, v13}, Lcom/android/phone/PhoneGlobals;->requestVoiceRecordingWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v6, Ljava/io/File;

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v10, Ljava/io/File;

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v13, "RecorderThread : Hidden file doesn\'t exist"

    const/4 v14, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v13, "RecorderThread : Save file doesn\'t exist"

    const/4 v14, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v13, "RecorderThread : resMove failed"

    const/4 v14, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v12, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecorderThread : error occurred while moving temp file"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v13, "RecorderThread : Recording file created"

    const/4 v14, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    :try_start_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "memo_contact_name"

    iget-object v13, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/phone/AnswerMemoRecorder;->access$1200(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    iget-object v13, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/phone/AnswerMemoRecorder;->access$1200(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->getContactDisplayName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/android/phone/AnswerMemoRecorder;->access$1300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/phone/AnswerMemoRecorder;->access$1200(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f09000a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_2
    const-string v12, "memo_display_name"

    invoke-virtual {v0, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "memo_create_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "memo_duration"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "memo_heard"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "memo_data"

    iget-object v13, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "memo_mime_type"

    const-string v13, "audio/amr"

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "memo_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "memo_deleted"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v12}, Lcom/android/phone/AnswerMemoRecorder;->access$400(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    iput-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mAnswerMemoSaveUri:Landroid/net/Uri;

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecorderThread : mAnswerMemoSaveUri "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mAnswerMemoSaveUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/AnswerMemoRecorder;->access$1400(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mAnswerMemoSaveUri:Landroid/net/Uri;

    if-nez v12, :cond_a

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v13, "RecorderThread : Content Resolver insert failed"

    const/4 v14, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_7

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    # getter for: Lcom/android/phone/AnswerMemoRecorder;->mCallerNumber:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/phone/AnswerMemoRecorder;->access$1200(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v1

    goto/16 :goto_2

    :catch_2
    move-exception v2

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "RecorderThread : error occurred while input data to provider "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;Z)V
    invoke-static {v12, v13, v14}, Lcom/android/phone/AnswerMemoRecorder;->access$300(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v12, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_a
    iget-object v12, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string v13, "RecorderThread : Recording saved"

    # invokes: Lcom/android/phone/AnswerMemoRecorder;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/AnswerMemoRecorder;->access$1400(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v2

    move-object v5, v6

    goto/16 :goto_1

    :catch_4
    move-exception v2

    move-object v9, v10

    move-object v5, v6

    goto/16 :goto_1
.end method
