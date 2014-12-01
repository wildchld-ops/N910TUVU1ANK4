.class Lcom/android/mms/replyservice/MiniModeService$6;
.super Landroid/content/BroadcastReceiver;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/MiniModeService;->initAlarmEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/MiniModeService;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/MiniModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/MiniModeService$6;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/mms/replyservice/MiniModeService;->ALARM_ALERT_ACTION:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/mms/replyservice/MiniModeService;->ALARM_ALERT_ACTION:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/replyservice/MiniModeService$6;->this$0:Lcom/android/mms/replyservice/MiniModeService;

    const/4 v3, 0x6

    # invokes: Lcom/android/mms/replyservice/MiniModeService;->handleClose(I)V
    invoke-static {v2, v3}, Lcom/android/mms/replyservice/MiniModeService;->access$000(Lcom/android/mms/replyservice/MiniModeService;I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
