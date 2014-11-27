.class public Lcom/mobeam/mbss/service/BeamReport;
.super Lcom/mobeam/mbss/service/Report;


# instance fields
.field public actualBeamDuration:I

.field public barcodePattern:Ljava/lang/String;

.field public beamStatus:Ljava/lang/String;

.field public beamingDuration:I

.field public campaignId:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public productName:Ljava/lang/String;

.field public productType:Ljava/lang/String;

.field public successFactor:I

.field public timestamp:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mobeam/mbss/service/Report;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lcom/mobeam/mbss/service/Report;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mobeam/mbss/service/Report;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public populate(Lcom/mobeam/mbss/service/BeamReport;)V
    .locals 1

    iget-object v0, p0, Lcom/mobeam/mbss/service/Report;->appID:Ljava/lang/String;

    iput-object v0, p1, Lcom/mobeam/mbss/service/Report;->appID:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/mbss/service/Report;->packName:Ljava/lang/String;

    iput-object v0, p1, Lcom/mobeam/mbss/service/Report;->packName:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/mbss/service/Report;->ts:Ljava/util/Date;

    iput-object v0, p1, Lcom/mobeam/mbss/service/Report;->ts:Ljava/util/Date;

    iget-object v0, p0, Lcom/mobeam/mbss/service/Report;->props:Lcom/mobeam/mbss/service/Props;

    iput-object v0, p1, Lcom/mobeam/mbss/service/Report;->props:Lcom/mobeam/mbss/service/Props;

    iget-object v0, p0, Lcom/mobeam/mbss/service/BeamReport;->barcodePattern:Ljava/lang/String;

    iput-object v0, p1, Lcom/mobeam/mbss/service/BeamReport;->barcodePattern:Ljava/lang/String;

    iget v0, p0, Lcom/mobeam/mbss/service/BeamReport;->beamingDuration:I

    iput v0, p1, Lcom/mobeam/mbss/service/BeamReport;->beamingDuration:I

    iget v0, p0, Lcom/mobeam/mbss/service/BeamReport;->actualBeamDuration:I

    iput v0, p1, Lcom/mobeam/mbss/service/BeamReport;->actualBeamDuration:I

    iget-object v0, p0, Lcom/mobeam/mbss/service/BeamReport;->location:Ljava/lang/String;

    iput-object v0, p1, Lcom/mobeam/mbss/service/BeamReport;->location:Ljava/lang/String;

    iget v0, p0, Lcom/mobeam/mbss/service/BeamReport;->successFactor:I

    iput v0, p1, Lcom/mobeam/mbss/service/BeamReport;->successFactor:I

    iget-object v0, p0, Lcom/mobeam/mbss/service/BeamReport;->campaignId:Ljava/lang/String;

    iput-object v0, p1, Lcom/mobeam/mbss/service/BeamReport;->campaignId:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/mbss/service/BeamReport;->productName:Ljava/lang/String;

    iput-object v0, p1, Lcom/mobeam/mbss/service/BeamReport;->productName:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/mbss/service/BeamReport;->productType:Ljava/lang/String;

    iput-object v0, p1, Lcom/mobeam/mbss/service/BeamReport;->productType:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/mbss/service/BeamReport;->beamStatus:Ljava/lang/String;

    iput-object v0, p1, Lcom/mobeam/mbss/service/BeamReport;->beamStatus:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobeam/mbss/service/BeamReport;->timestamp:Ljava/lang/String;

    iput-object v0, p1, Lcom/mobeam/mbss/service/BeamReport;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BeamReport [barcodePattern="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobeam/mbss/service/BeamReport;->barcodePattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beamingDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobeam/mbss/service/BeamReport;->beamingDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actualBeamDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobeam/mbss/service/BeamReport;->actualBeamDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/BeamReport;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", successFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobeam/mbss/service/BeamReport;->successFactor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", campaignId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/BeamReport;->campaignId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/BeamReport;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/BeamReport;->productType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beamStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/BeamReport;->beamStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/Report;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/Report;->ts:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/BeamReport;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/Report;->packName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", props="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/Report;->props:Lcom/mobeam/mbss/service/Props;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
