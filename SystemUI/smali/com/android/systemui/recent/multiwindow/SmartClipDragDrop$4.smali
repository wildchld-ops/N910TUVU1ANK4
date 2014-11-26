.class Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$4;
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

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$4;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    :try_start_0
    const-string v0, "SmartClipDragDrop"

    const-string v1, "onReceive : recents panel broadcast received!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$4;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->stopService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
