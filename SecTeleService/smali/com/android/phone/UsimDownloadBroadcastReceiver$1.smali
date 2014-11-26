.class Lcom/android/phone/UsimDownloadBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "UsimDownloadBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UsimDownloadBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsimDownloadBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/UsimDownloadBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver$1;->this$0:Lcom/android/phone/UsimDownloadBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "UsimDownloadReceiver"

    const-string v1, "mKTRefreshResetRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver$1;->this$0:Lcom/android/phone/UsimDownloadBroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/UsimDownloadBroadcastReceiver$1;->this$0:Lcom/android/phone/UsimDownloadBroadcastReceiver;

    # getter for: Lcom/android/phone/UsimDownloadBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->access$000(Lcom/android/phone/UsimDownloadBroadcastReceiver;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/phone/UsimDownloadBroadcastReceiver;->StartRefreshReset(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/phone/UsimDownloadBroadcastReceiver;->access$100(Lcom/android/phone/UsimDownloadBroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method
