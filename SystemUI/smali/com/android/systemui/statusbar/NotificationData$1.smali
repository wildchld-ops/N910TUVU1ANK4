.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 7

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v3

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v4

    sub-int v0, v3, v4

    # getter for: Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$000(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    # getter for: Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$000(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v4

    if-eq v3, v4, :cond_1

    # getter for: Lcom/android/systemui/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$000(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-wide v3, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-wide v5, v5, Landroid/app/Notification;->when:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
