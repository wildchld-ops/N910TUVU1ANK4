.class final Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsSmsDeliveryInfo"
.end annotation


# instance fields
.field public mTicker:Ljava/lang/CharSequence;

.field public mTimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTicker:Ljava/lang/CharSequence;

    iput-wide p2, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTimeMillis:J

    return-void
.end method


# virtual methods
.method public deliver(Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTicker:Ljava/lang/CharSequence;

    iget-wide v1, p0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->mTimeMillis:J

    # invokes: Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->access$500(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void
.end method
