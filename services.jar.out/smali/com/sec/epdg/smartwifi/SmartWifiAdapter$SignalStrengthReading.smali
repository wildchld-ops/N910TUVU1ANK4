.class final Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SignalStrengthReading"
.end annotation


# instance fields
.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mTimeStamp:I

.field final synthetic this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# direct methods
.method constructor <init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/telephony/SignalStrength;I)V
    .locals 3

    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;->this$0:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New entry : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput p3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;->mTimeStamp:I

    return-void
.end method


# virtual methods
.method getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method
