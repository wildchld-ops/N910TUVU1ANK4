.class public Lcom/android/mms/help/MessageDetails;
.super Ljava/lang/Object;
.source "MessageDetails.java"


# instance fields
.field mFrom:Ljava/lang/String;

.field mIcon:I

.field mNumber:Ljava/lang/String;

.field mSub:Ljava/lang/String;

.field mTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/help/MessageDetails;->mFrom:Ljava/lang/String;

    iput p2, p0, Lcom/android/mms/help/MessageDetails;->mIcon:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/help/MessageDetails;->mFrom:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/help/MessageDetails;->mNumber:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/help/MessageDetails;->mIcon:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/mms/help/MessageDetails;->mFrom:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/help/MessageDetails;->mSub:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/help/MessageDetails;->mTime:Ljava/lang/String;

    iput p4, p0, Lcom/android/mms/help/MessageDetails;->mIcon:I

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    iget v0, p0, Lcom/android/mms/help/MessageDetails;->mIcon:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/MessageDetails;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/MessageDetails;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSub()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/MessageDetails;->mSub:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/MessageDetails;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/help/MessageDetails;->mIcon:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/MessageDetails;->mFrom:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/MessageDetails;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setSub(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/MessageDetails;->mSub:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/MessageDetails;->mTime:Ljava/lang/String;

    return-void
.end method
