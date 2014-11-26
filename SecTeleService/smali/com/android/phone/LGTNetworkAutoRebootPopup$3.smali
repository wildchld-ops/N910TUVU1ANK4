.class Lcom/android/phone/LGTNetworkAutoRebootPopup$3;
.super Ljava/lang/Thread;
.source "LGTNetworkAutoRebootPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/LGTNetworkAutoRebootPopup;->setAuto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;


# direct methods
.method constructor <init>(Lcom/android/phone/LGTNetworkAutoRebootPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/LGTNetworkAutoRebootPopup$3;->this$0:Lcom/android/phone/LGTNetworkAutoRebootPopup;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    return-void
.end method
