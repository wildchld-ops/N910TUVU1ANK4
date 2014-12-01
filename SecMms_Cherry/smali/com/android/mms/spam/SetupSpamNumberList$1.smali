.class Lcom/android/mms/spam/SetupSpamNumberList$1;
.super Landroid/os/Handler;
.source "SetupSpamNumberList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamNumberList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberList;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList$1;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$1;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$1;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    # invokes: Lcom/android/mms/spam/SetupSpamNumberList;->stopContactQuery()V
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberList;->access$100(Lcom/android/mms/spam/SetupSpamNumberList;)V

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList$1;->this$0:Lcom/android/mms/spam/SetupSpamNumberList;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z
    invoke-static {v0, v1}, Lcom/android/mms/spam/SetupSpamNumberList;->access$202(Lcom/android/mms/spam/SetupSpamNumberList;Z)Z

    :cond_0
    return-void
.end method
