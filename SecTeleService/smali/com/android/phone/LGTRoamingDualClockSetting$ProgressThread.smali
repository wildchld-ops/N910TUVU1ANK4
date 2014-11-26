.class Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;
.super Ljava/lang/Thread;
.source "LGTRoamingDualClockSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/LGTRoamingDualClockSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressThread"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field mState:I

.field final synthetic this$0:Lcom/android/phone/LGTRoamingDualClockSetting;

.field total:I


# direct methods
.method constructor <init>(Lcom/android/phone/LGTRoamingDualClockSetting;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->this$0:Lcom/android/phone/LGTRoamingDualClockSetting;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mState:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->total:I

    :goto_0
    iget v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mState:I

    if-ne v2, v4, :cond_0

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "total"

    iget v3, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->total:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->total:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->total:I

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/phone/LGTRoamingDualClockSetting$ProgressThread;->mState:I

    return-void
.end method
