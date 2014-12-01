.class public Lcom/android/mms/spam/SpamFilter$SpamFilterData;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SpamFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpamFilterData"
.end annotation


# instance fields
.field private mContactName:Ljava/lang/String;

.field private mCriteria:I

.field private mEnable:Z

.field private mFilter:Ljava/lang/String;

.field private mId:I

.field private mType:I


# direct methods
.method constructor <init>(IIZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mId:I

    iput p2, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I

    iput-boolean p3, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z

    iput-object p4, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;

    iput p5, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/spam/SpamFilter$SpamFilterData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/spam/SpamFilter$SpamFilterData;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I

    return v0
.end method


# virtual methods
.method public getContactName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getCriteria()I
    .locals 1

    iget v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mCriteria:I

    return v0
.end method

.method public getEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z

    return v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mId:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mType:I

    return v0
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mContactName:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->mEnable:Z

    return-void
.end method
