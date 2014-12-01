.class Lcom/android/settings/fuelgauge/PowerUsageSummary$3;
.super Landroid/os/Handler;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    # invokes: Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V
    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$200(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->init()V

    return-void
.end method
