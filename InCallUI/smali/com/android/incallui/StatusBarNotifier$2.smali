.class Lcom/android/incallui/StatusBarNotifier$2;
.super Landroid/database/ContentObserver;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/StatusBarNotifier;->createRegistrationStateObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private prevRegState:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->NO_STATE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier$2;->prevRegState:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    # getter for: Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/StatusBarNotifier;->access$100(Lcom/android/incallui/StatusBarNotifier;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier$2;->prevRegState:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-eq v1, v2, :cond_0

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier$2;->prevRegState:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    sget-object v2, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v2, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getDomain()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    # getter for: Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/incallui/StatusBarNotifier;->access$200(Lcom/android/incallui/StatusBarNotifier;)Landroid/app/NotificationManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method
