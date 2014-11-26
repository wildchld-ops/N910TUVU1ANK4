.class final Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/MessagingNotification$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)I
    .locals 4
    .param p1    # Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .param p2    # Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    invoke-virtual {p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    check-cast p2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;->compare(Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)I

    move-result v0

    return v0
.end method
