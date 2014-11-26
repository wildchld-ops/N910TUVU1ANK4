.class Lcom/android/mms/cover/MissedMsgActivity$3;
.super Ljava/lang/Object;
.source "MissedMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgActivity;->initResourceLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/cover/MissedMsgActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/cover/MissedMsgActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$3;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "make a call"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$3;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mAddressToCall:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$900(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$3;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$600(Lcom/android/mms/cover/MissedMsgActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/cover/MissedMsgActivity$3;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mAddressToCall:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/cover/MissedMsgActivity;->access$900(Lcom/android/mms/cover/MissedMsgActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
