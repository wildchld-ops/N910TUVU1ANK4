.class public Lcom/android/systemui/statusbar/phone/MockListener;
.super Landroid/service/notification/NotificationListenerService;
.source "MockListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/MockListener$StringListResultCatcher;,
        Lcom/android/systemui/statusbar/phone/MockListener$IntegerResultCatcher;
    }
.end annotation


# static fields
.field static final EXTRA_CODE:Ljava/lang/String; = "CODE"

.field static final EXTRA_PAYLOAD:Ljava/lang/String; = "TAGS"

.field static final EXTRA_TAG:Ljava/lang/String; = "TAG"

.field public static final JSON_FLAGS:Ljava/lang/String; = "flag"

.field public static final JSON_ICON:Ljava/lang/String; = "icon"

.field public static final JSON_ID:Ljava/lang/String; = "id"

.field public static final JSON_PACKAGE:Ljava/lang/String; = "pkg"

.field public static final JSON_TAG:Ljava/lang/String; = "tag"

.field public static final JSON_WHEN:Ljava/lang/String; = "when"

.field static final RESULT_NO_SERVER:I = 0x2

.field static final RESULT_TIMEOUT:I = 0x1

.field static final SERVICE_CHECK:Ljava/lang/String; = "android.service.notification.cts.SERVICE_CHECK"

.field static final SERVICE_CLEAR_ALL:Ljava/lang/String; = "android.service.notification.cts.SERVICE_CLEAR_ALL"

.field static final SERVICE_CLEAR_ONE:Ljava/lang/String; = "android.service.notification.cts.SERVICE_CLEAR_ONE"

.field static final SERVICE_PAYLOADS:Ljava/lang/String; = "android.service.notification.cts.SERVICE_PAYLOADS"

.field static final SERVICE_POSTED:Ljava/lang/String; = "android.service.notification.cts.SERVICE_POSTED"

.field static final SERVICE_REMOVED:Ljava/lang/String; = "android.service.notification.cts.SERVICE_REMOVED"

.field static final SERVICE_RESET:Ljava/lang/String; = "android.service.notification.cts.SERVICE_RESET"

.field static final TAG:Ljava/lang/String; = "MockListener"


# instance fields
.field private mPayloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPosted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoved:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mPosted:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mPayloads:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mRemoved:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/MockListener;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mPosted:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/MockListener;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mPayloads:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/MockListener;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mRemoved:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static clearAll(Landroid/content/Context;)V
    .locals 3

    const-string v0, "android.service.notification.cts.SERVICE_CLEAR_ALL"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/MockListener;->sendCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static clearOne(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "android.service.notification.cts.SERVICE_CLEAR_ONE"

    invoke-static {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/MockListener;->sendCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static probeListenerPayloads(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/MockListener$StringListResultCatcher;)V
    .locals 1

    const-string v0, "android.service.notification.cts.SERVICE_PAYLOADS"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/MockListener;->requestStringListResult(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/MockListener$StringListResultCatcher;)V

    return-void
.end method

.method public static probeListenerPosted(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/MockListener$StringListResultCatcher;)V
    .locals 1

    const-string v0, "android.service.notification.cts.SERVICE_POSTED"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/MockListener;->requestStringListResult(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/MockListener$StringListResultCatcher;)V

    return-void
.end method

.method public static probeListenerRemoved(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/MockListener$StringListResultCatcher;)V
    .locals 1

    const-string v0, "android.service.notification.cts.SERVICE_REMOVED"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/MockListener;->requestStringListResult(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/MockListener$StringListResultCatcher;)V

    return-void
.end method

.method public static probeListenerStatus(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/MockListener$IntegerResultCatcher;)V
    .locals 1

    const-string v0, "android.service.notification.cts.SERVICE_CHECK"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/MockListener;->requestIntegerResult(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/MockListener$IntegerResultCatcher;)V

    return-void
.end method

.method private static requestIntegerResult(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/MockListener$IntegerResultCatcher;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    move-object v0, p0

    move-object v3, p2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static requestStringListResult(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/MockListener$StringListResultCatcher;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    move-object v0, p0

    move-object v3, p2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static resetListenerData(Landroid/content/Context;)V
    .locals 3

    const-string v0, "android.service.notification.cts.SERVICE_RESET"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/MockListener;->sendCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static sendCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "TAG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v1, "MockListener"

    const-string v2, "created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mPosted:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mRemoved:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/MockListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/MockListener$1;-><init>(Lcom/android/systemui/statusbar/phone/MockListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.service.notification.cts.SERVICE_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.service.notification.cts.SERVICE_POSTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.service.notification.cts.SERVICE_PAYLOADS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.service.notification.cts.SERVICE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.service.notification.cts.SERVICE_CLEAR_ONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.service.notification.cts.SERVICE_CLEAR_ALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.service.notification.cts.SERVICE_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "MockListener"

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    const-string v0, "MockListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mRemoved:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetData()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mPosted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mPayloads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MockListener;->mRemoved:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
