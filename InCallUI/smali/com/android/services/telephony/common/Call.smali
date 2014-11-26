.class public final Lcom/android/services/telephony/common/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/Call$DisconnectCause;,
        Lcom/android/services/telephony/common/Call$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOMAIN_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static PRESENTATION_ALLOWED:I

.field public static PRESENTATION_PAYPHONE:I

.field public static PRESENTATION_RESTRICTED:I

.field public static PRESENTATION_UNKNOWN:I

.field private static final RESOLUTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAssisted:I

.field private mAwimUpdateInfo:I

.field private mCVOStatus:I

.field private mCallId:I

.field private mCapabilities:I

.field private mChildCallIds:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTime:J

.field private mConnectTimeReal:J

.field private mCreateTime:J

.field private mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field private mDomain:I

.field private mDurationMillis:J

.field private mEmergencyCallbackMode:I

.field private mEriInfo:Ljava/lang/String;

.field private mGatewayNumber:Ljava/lang/String;

.field private mGatewayPackage:Ljava/lang/String;

.field private mHDIcon:I

.field private mIMSConferenceCall:B

.field private mIdentification:Lcom/android/services/telephony/common/CallIdentification;

.field private mIsSrvccConference:B

.field private mLineContolEvent:B

.field private mPhoneNumberLocator:Ljava/lang/String;

.field private mPhoneType:I

.field private mRawNumber:Ljava/lang/String;

.field private mReceivedCall:B

.field private mSipErrorCode:I

.field private mState:I

.field private mType:I

.field private mVideoCall:Ljava/lang/String;

.field private mVideoResolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ACTIVE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CALL_WAITING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DIALING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ALERTING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REDIALING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IDLE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INCOMING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ONHOLD"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "INVALID"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DISCONNECTING"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DISCONNECTED"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CONFERENCED"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/Call;->STATE_MAP:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VOICE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO_SHARE_TX"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO_SHARE_RX"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MODIFY_REQUEST"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MODIFY_RECEIVE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/Call;->TYPE_MAP:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CS"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PS"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/Call;->DOMAIN_MAP:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QCIF"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QVGA"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VGA"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VGALAND"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CIF"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HD720"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/Call;->RESOLUTION_MAP:Ljava/util/Map;

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_RESTRICTED:I

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_UNKNOWN:I

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    sput v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_PAYPHONE:I

    new-instance v0, Lcom/android/services/telephony/common/Call$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/Call$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/services/telephony/common/Call;->mState:I

    iput v1, p0, Lcom/android/services/telephony/common/Call;->mType:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mDomain:I

    iput v1, p0, Lcom/android/services/telephony/common/Call;->mHDIcon:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCVOStatus:I

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mVideoResolution:I

    iput v1, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    iput-wide v2, p0, Lcom/android/services/telephony/common/Call;->mDurationMillis:J

    iput v1, p0, Lcom/android/services/telephony/common/Call;->mSipErrorCode:I

    invoke-static {}, Lcom/google/android/collect/Sets;->newSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    iput-byte v1, p0, Lcom/android/services/telephony/common/Call;->mIsSrvccConference:B

    iput v1, p0, Lcom/android/services/telephony/common/Call;->mAwimUpdateInfo:I

    iput v1, p0, Lcom/android/services/telephony/common/Call;->mAssisted:I

    iput v1, p0, Lcom/android/services/telephony/common/Call;->mEmergencyCallbackMode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mVideoCall:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/Call$DisconnectCause;->valueOf(Ljava/lang/String;)Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mDurationMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mSipErrorCode:I

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->asList([I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    const-class v0, Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/CallIdentification;

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mDomain:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mHDIcon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mCVOStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mVideoResolution:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneNumberLocator:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/services/telephony/common/Call;->mLineContolEvent:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/services/telephony/common/Call;->mIMSConferenceCall:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/services/telephony/common/Call;->mReceivedCall:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mAwimUpdateInfo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mRawNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mAssisted:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/Call;->mEmergencyCallbackMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mEriInfo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/services/telephony/common/Call;->mIsSrvccConference:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/Call;->mVideoCall:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/Call$1;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # Lcom/android/services/telephony/common/Call$1;

    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/Call;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public can(I)Z
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAssisted()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mAssisted:I

    return v0
.end method

.method public getAwimUpdateInfo()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mAwimUpdateInfo:I

    return v0
.end method

.method public getCVOStatus()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCVOStatus:I

    return v0
.end method

.method public getCallId()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    return v0
.end method

.method public getCapabilities()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    return v0
.end method

.method public getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getCnapName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;
    .locals 2

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    goto :goto_0
.end method

.method public getDomain()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mDomain:I

    return v0
.end method

.method public getDurationMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/services/telephony/common/Call;->mDurationMillis:J

    return-wide v0
.end method

.method public getEmergencyCallbackMode()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mEmergencyCallbackMode:I

    return v0
.end method

.method public getEriInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mEriInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getGatewayPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getHDIcon()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mHDIcon:I

    return v0
.end method

.method public getIMSConferenceCall()B
    .locals 1

    iget-byte v0, p0, Lcom/android/services/telephony/common/Call;->mIMSConferenceCall:B

    return v0
.end method

.method public getIdentification()Lcom/android/services/telephony/common/CallIdentification;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    return-object v0
.end method

.method public getLineCtrlEvent()B
    .locals 1

    iget-byte v0, p0, Lcom/android/services/telephony/common/Call;->mLineContolEvent:B

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getNumberPresentation()I

    move-result v0

    return v0
.end method

.method public getPhoneNumberLocator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneNumberLocator:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    return v0
.end method

.method public getPostDialString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getPostDialString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mRawNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedCall()B
    .locals 1

    iget-byte v0, p0, Lcom/android/services/telephony/common/Call;->mReceivedCall:B

    return v0
.end method

.method public getSimId()I
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/CallIdentification;->getSimId()I

    move-result v0

    return v0
.end method

.method public getSipErrorCode()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mSipErrorCode:I

    return v0
.end method

.method public getSrvccConference()B
    .locals 1

    iget-byte v0, p0, Lcom/android/services/telephony/common/Call;->mIsSrvccConference:B

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mType:I

    return v0
.end method

.method public getVideoCall()Z
    .locals 2

    const-string v0, "true"

    iget-object v1, p0, Lcom/android/services/telephony/common/Call;->mVideoCall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getVideoResolution()I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mVideoResolution:I

    return v0
.end method

.method public isConferenceCall()Z
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIMSConferenceCall()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/android/services/telephony/common/Call;->mIMSConferenceCall:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReceivedCall()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/android/services/telephony/common/Call;->mReceivedCall:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSrvccConference()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/android/services/telephony/common/Call;->mIsSrvccConference:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)V
    .locals 0
    .param p1    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    iput-object p1, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    return-void
.end method

.method public setSipErrorCode(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/services/telephony/common/Call;->mSipErrorCode:I

    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/services/telephony/common/Call;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCallId"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mState"

    sget-object v2, Lcom/android/services/telephony/common/Call;->STATE_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/Call;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mDisconnectCause"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCapabilities"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mCapabilities:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCreateTime"

    iget-wide v2, p0, Lcom/android/services/telephony/common/Call;->mCreateTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mConnectTime"

    iget-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mDurationMillis"

    iget-wide v2, p0, Lcom/android/services/telephony/common/Call;->mDurationMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSipErrorCode"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mSipErrorCode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mChildCallIds"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mGatewayNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mGatewayNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mGatewayPackage"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mGatewayPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIdentification"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mType"

    sget-object v2, Lcom/android/services/telephony/common/Call;->TYPE_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/Call;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mDomain"

    sget-object v2, Lcom/android/services/telephony/common/Call;->DOMAIN_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/Call;->mDomain:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mHDIcon"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mHDIcon:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCVOStatus"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mCVOStatus:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mVideoResolution"

    sget-object v2, Lcom/android/services/telephony/common/Call;->RESOLUTION_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/Call;->mVideoResolution:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPhoneNumberLocator"

    sget-object v2, Lcom/android/services/telephony/common/Call;->RESOLUTION_MAP:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/services/telephony/common/Call;->mPhoneNumberLocator:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mLineContolEvent"

    iget-byte v2, p0, Lcom/android/services/telephony/common/Call;->mLineContolEvent:B

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIMSConferenceCall"

    iget-byte v2, p0, Lcom/android/services/telephony/common/Call;->mIMSConferenceCall:B

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mReceivedCall"

    iget-byte v2, p0, Lcom/android/services/telephony/common/Call;->mReceivedCall:B

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPhoneType"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mAwimUpdateInfo"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mAwimUpdateInfo:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mRawNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mRawNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mAssisted"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mAssisted:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mEmergencyCallbackMode"

    iget v2, p0, Lcom/android/services/telephony/common/Call;->mEmergencyCallbackMode:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mConnectTimeReal"

    iget-wide v2, p0, Lcom/android/services/telephony/common/Call;->mConnectTimeReal:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsSrvccConference"

    iget-byte v2, p0, Lcom/android/services/telephony/common/Call;->mIsSrvccConference:B

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mVideoCall"

    iget-object v2, p0, Lcom/android/services/telephony/common/Call;->mVideoCall:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCapabilities()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCreateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getDurationMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getSipErrorCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mChildCallIds:Ljava/util/SortedSet;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getGatewayNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getGatewayPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mIdentification:Lcom/android/services/telephony/common/CallIdentification;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mDomain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mHDIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mCVOStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mVideoResolution:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getPhoneNumberLocator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getLineCtrlEvent()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getIMSConferenceCall()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getReceivedCall()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/android/services/telephony/common/Call;->mPhoneType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getAwimUpdateInfo()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getAssisted()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getEmergencyCallbackMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getEriInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getConnectTimeReal()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getSrvccConference()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/android/services/telephony/common/Call;->mVideoCall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
