.class Lcom/android/mms/accessory/ReadReportActivity$MmsData;
.super Ljava/lang/Object;
.source "ReadReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/accessory/ReadReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsData"
.end annotation


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private final mId:J

.field private final mMessageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mId:J

    iput-object p3, p0, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mMessageId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/accessory/ReadReportActivity$MmsData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/accessory/ReadReportActivity$MmsData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/accessory/ReadReportActivity$MmsData;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/accessory/ReadReportActivity$MmsData;->mId:J

    return-wide v0
.end method
