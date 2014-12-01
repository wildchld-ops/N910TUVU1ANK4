.class Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$2;
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

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$2;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SmartClipDragDrop"

    const-string v1, "onReceive : AppList Expanded!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$2;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->stopService()V

    return-void
.end method
