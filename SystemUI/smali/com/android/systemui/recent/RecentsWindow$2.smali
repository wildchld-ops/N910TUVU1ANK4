.class Lcom/android/systemui/recent/RecentsWindow$2;
.super Landroid/content/BroadcastReceiver;
.source "RecentsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsWindow$2;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow$2;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # getter for: Lcom/android/systemui/recent/RecentsWindow;->mFeatureMultiwindowRecentUI:Z
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsWindow;->access$600(Lcom/android/systemui/recent/RecentsWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow$2;->this$0:Lcom/android/systemui/recent/RecentsWindow;

    # invokes: Lcom/android/systemui/recent/RecentsWindow;->initMultiWindowTray()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsWindow;->access$700(Lcom/android/systemui/recent/RecentsWindow;)V

    :cond_0
    return-void
.end method
