.class final Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;
.super Ljava/lang/Object;
.source "DeliveryReadReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeliveryReadReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsReportStatus"
.end annotation


# instance fields
.field final deliveryDate:J

.field final deliveryStatus:I

.field final mContext:Landroid/content/Context;

.field final readDate:J

.field final readStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->deliveryStatus:I

    iput p3, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->readStatus:I

    iput-wide p4, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->deliveryDate:J

    iput-wide p6, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->readDate:J

    return-void
.end method


# virtual methods
.method public getDeliveryReportDate()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->deliveryDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->deliveryDate:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getReadReportDate()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->readDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/ui/DeliveryReadReport$MmsReportStatus;->readDate:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
