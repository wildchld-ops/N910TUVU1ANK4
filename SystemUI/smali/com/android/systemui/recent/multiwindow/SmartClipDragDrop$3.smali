.class Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$3;
.super Landroid/content/BroadcastReceiver;
.source "SmartClipDragDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$3;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SmartClipDragDrop"

    const-string v4, "isInitialStickyBroadcast just return"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "com.sec.android.extra.MULTIWINDOW_FREESTYLE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "SmartClipDragDrop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive : MULTIWINDOW_STATUS  bMultiWindowEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bMultiWindowCascade"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$3;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-virtual {v3}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->stopService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method
