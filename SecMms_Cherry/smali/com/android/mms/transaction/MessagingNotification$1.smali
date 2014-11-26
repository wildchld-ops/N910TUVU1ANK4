.class Lcom/android/mms/transaction/MessagingNotification$1;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->updateMsgInsertedState(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MessagingNotification;

.field final synthetic val$boxType:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$m_type:I

.field final synthetic val$msgType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessagingNotification;Ljava/lang/String;ILandroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$1;->this$0:Lcom/android/mms/transaction/MessagingNotification;

    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$msgType:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$boxType:I

    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$context:Landroid/content/Context;

    iput p5, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$m_type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$msgType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$boxType:I

    if-nez v0, :cond_0

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->SMS:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$msgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$context:Landroid/content/Context;

    const-string v1, "RCVS"

    invoke-static {v0, v1}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/android/mms/transaction/MessagingNotification;->MMS:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$200()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$msgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$m_type:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$context:Landroid/content/Context;

    const-string v1, "RCVM"

    invoke-static {v0, v1}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
