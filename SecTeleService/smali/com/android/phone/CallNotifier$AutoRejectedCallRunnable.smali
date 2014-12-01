.class Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectedCallRunnable"
.end annotation


# instance fields
.field c:Lcom/android/internal/telephony/Connection;

.field final date:J

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;Lcom/android/internal/telephony/Connection;J)V
    .locals 0
    .param p2    # Lcom/android/internal/telephony/Connection;
    .param p3    # J

    iput-object p1, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->c:Lcom/android/internal/telephony/Connection;

    iput-wide p3, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->date:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const-string v3, "AutoRejectedCallRunnable: run..."

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v3, v7}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # setter for: Lcom/android/phone/CallNotifier;->mIsAutoRejectedCallQuery:Z
    invoke-static {v0, v7}, Lcom/android/phone/CallNotifier;->access$3302(Lcom/android/phone/CallNotifier;Z)Z

    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->c:Lcom/android/internal/telephony/Connection;

    iget-object v4, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    iget-wide v5, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->date:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v9

    iget-boolean v0, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/CallNotifier;->mIsAutoRejectedCallQuery:Z
    invoke-static {v0, v3}, Lcom/android/phone/CallNotifier;->access$3302(Lcom/android/phone/CallNotifier;Z)Z

    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const-string v3, "AutoRejectedCallRunnable: isFinal is set"

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v3, v7}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    :cond_0
    if-eqz v9, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    const-string v3, "showAutoRejectedCallNotification: Querying for CallerInfo on AutoRejected call..."

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v3, v7}, Lcom/android/phone/CallNotifier;->access$1300(Lcom/android/phone/CallNotifier;Ljava/lang/String;Z)V

    iget-object v8, v9, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v8, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget v0, v8, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v3, 0x7f09000c

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v8, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v8, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    iget-wide v6, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->date:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyAutoRejectedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    :goto_1
    return-void

    :cond_2
    iget v0, v8, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const v3, 0x7f09000a

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget v3, v8, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v8, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAutoRejectedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallNotifier$AutoRejectedCallRunnable;->c:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1
.end method
