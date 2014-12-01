.class Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;
.super Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreSpamTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v2, v2, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v4, v4, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;->bundleTaskParams(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/mms/spam/SpamUtils$RestoreSpamTask;->onPostExecute(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
