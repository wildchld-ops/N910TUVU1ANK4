.class Lcom/android/server/am/MultiWindowPolicy$1;
.super Landroid/telephony/PhoneStateListener;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowPolicy;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    const/4 v2, 0x0

    const-string v0, "com.android.incallui"

    const-string v1, "com.android.phone"

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "com.android.incallui"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, v3, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowPolicy$1;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v5, v3, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    if-eqz v2, :cond_2

    const-string v3, "com.android.incallui"

    :goto_1
    invoke-virtual {v5, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :cond_2
    const-string v3, "com.android.phone"

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method
