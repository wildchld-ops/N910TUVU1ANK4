.class Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;
.super Ljava/lang/Object;
.source "LppAlgorithm.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/contextaware/aggregator/lpp/LppLocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;->this$0:Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)I
    .locals 4

    iget-wide v0, p1, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    iget-wide v2, p2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    iget-wide v2, p2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    check-cast p2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;->compare(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)I

    move-result v0

    return v0
.end method
