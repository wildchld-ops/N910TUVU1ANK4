.class Lcom/android/incallui/VoWifiStateTracker$2;
.super Ljava/lang/Object;
.source "VoWifiStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/VoWifiStateTracker;->updateRegistrationStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/VoWifiStateTracker;


# direct methods
.method constructor <init>(Lcom/android/incallui/VoWifiStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/VoWifiStateTracker$2;->this$0:Lcom/android/incallui/VoWifiStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VoWifiStateTracker$2;->this$0:Lcom/android/incallui/VoWifiStateTracker;

    # invokes: Lcom/android/incallui/VoWifiStateTracker;->getVoWiFiStatus()V
    invoke-static {v0}, Lcom/android/incallui/VoWifiStateTracker;->access$200(Lcom/android/incallui/VoWifiStateTracker;)V

    return-void
.end method
