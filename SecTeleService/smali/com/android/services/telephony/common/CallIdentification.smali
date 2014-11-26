.class public final Lcom/android/services/telephony/common/CallIdentification;
.super Ljava/lang/Object;
.source "CallIdentification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/CallIdentification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallId:I

.field private mCallMessage:Ljava/lang/String;

.field private mCdnipNumber:Ljava/lang/String;

.field private mCnapName:Ljava/lang/String;

.field private mCnapNamePresentation:I

.field private mNumber:Ljava/lang/String;

.field private mNumberPresentation:I

.field private mOrigDialString:Ljava/lang/String;

.field private mPostDialString:Ljava/lang/String;

.field private mRadNumber:Ljava/lang/String;

.field private mSimId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/services/telephony/common/CallIdentification$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/CallIdentification$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/CallIdentification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCdnipNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallMessage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mRadNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSimId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mOrigDialString:Ljava/lang/String;

    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCdnipNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallMessage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mRadNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSimId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mOrigDialString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCdnipNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mRadNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSimId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mOrigDialString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/CallIdentification$1;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # Lcom/android/services/telephony/common/CallIdentification$1;

    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/CallIdentification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/common/CallIdentification;)V
    .locals 1
    .param p1    # Lcom/android/services/telephony/common/CallIdentification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCdnipNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallMessage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mRadNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSimId:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mOrigDialString:Ljava/lang/String;

    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCdnipNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCdnipNumber:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCallMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallMessage:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mRadNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mRadNumber:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mSimId:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSimId:I

    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mOrigDialString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mOrigDialString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCdnipNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    return v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mOrigDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDialString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getRadNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mRadNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSimId:I

    return v0
.end method

.method public setCallMessage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallMessage:Ljava/lang/String;

    return-void
.end method

.method public setCdnipNumber(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCdnipNumber:Ljava/lang/String;

    return-void
.end method

.method public setCnapName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    return-void
.end method

.method public setCnapNamePresentation(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setNumberPresentation(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    return-void
.end method

.method public setOrigDialString(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mOrigDialString:Ljava/lang/String;

    return-void
.end method

.method public setPostDialString(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    return-void
.end method

.method public setRadNumber(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mRadNumber:Ljava/lang/String;

    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mSimId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCallId"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumberPresentation"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCnapName"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCnapNamePresentation"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCdnipNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCdnipNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCallMessage"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallMessage:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mRadNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mRadNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPostDialString"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSimId"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mSimId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mOrigDialString"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mOrigDialString:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCdnipNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mRadNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mPostDialString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mSimId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mOrigDialString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
