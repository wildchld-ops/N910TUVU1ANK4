.class Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/StatusBarNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakeNotificationCallback"
.end annotation


# instance fields
.field private mAllowFullScreenIntent:Z

.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;


# direct methods
.method public constructor <init>(Lcom/android/incallui/StatusBarNotifier;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;->mAllowFullScreenIntent:Z

    iput-boolean p2, p0, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;->mAllowFullScreenIntent:Z

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;->mAllowFullScreenIntent:Z

    invoke-virtual {v1, v0, p2, v2}, Lcom/android/incallui/StatusBarNotifier;->makeNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;->mAllowFullScreenIntent:Z

    const-string v1, "MakeNotificationCallback - onContactInfoComplete"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onImageLoadComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;->mAllowFullScreenIntent:Z

    invoke-virtual {v1, v0, p2, v2}, Lcom/android/incallui/StatusBarNotifier;->makeNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    const-string v1, "MakeNotificationCallback - onImageLoadComplete"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
