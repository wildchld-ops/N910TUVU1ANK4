.class public Lcom/samsung/android/service/gesture/GestureEvent;
.super Ljava/lang/Object;
.source "GestureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/service/gesture/GestureEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final GESTURE_EVENT_APPROACH:I = 0x2

.field public static final GESTURE_EVENT_HANDSHAKE:I = 0x6

.field public static final GESTURE_EVENT_HOVER:I = 0x5

.field public static final GESTURE_EVENT_SWEEP_DOWN:I = 0x4

.field public static final GESTURE_EVENT_SWEEP_LEFT:I = 0x1

.field public static final GESTURE_EVENT_SWEEP_RIGHT:I = 0x0

.field public static final GESTURE_EVENT_SWEEP_UP:I = 0x3

.field private static final MAX_POOL_SIZE:I = 0x32

.field private static mPool:Lcom/samsung/android/service/gesture/GestureEvent;

.field private static mPoolSize:I

.field private static final mPoolSync:Lcom/samsung/android/service/gesture/GestureEvent;


# instance fields
.field private mEvent:I

.field private mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

.field private mProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/service/gesture/GestureEvent;

    invoke-direct {v0}, Lcom/samsung/android/service/gesture/GestureEvent;-><init>()V

    sput-object v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSync:Lcom/samsung/android/service/gesture/GestureEvent;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    new-instance v0, Lcom/samsung/android/service/gesture/GestureEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/service/gesture/GestureEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/service/gesture/GestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/service/gesture/GestureEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain()Lcom/samsung/android/service/gesture/GestureEvent;
    .locals 3

    sget-object v2, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSync:Lcom/samsung/android/service/gesture/GestureEvent;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/service/gesture/GestureEvent;->mPool:Lcom/samsung/android/service/gesture/GestureEvent;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPool:Lcom/samsung/android/service/gesture/GestureEvent;

    iget-object v1, v0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    sput-object v1, Lcom/samsung/android/service/gesture/GestureEvent;->mPool:Lcom/samsung/android/service/gesture/GestureEvent;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    sget v1, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/samsung/android/service/gesture/GestureEvent;

    invoke-direct {v0}, Lcom/samsung/android/service/gesture/GestureEvent;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(Lcom/samsung/android/service/gesture/GestureEvent;)Lcom/samsung/android/service/gesture/GestureEvent;
    .locals 2

    invoke-static {}, Lcom/samsung/android/service/gesture/GestureEvent;->obtain()Lcom/samsung/android/service/gesture/GestureEvent;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    iput v1, v0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    iput-object v1, v0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method clearForRecycle()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    iput-object v1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    return-void
.end method

.method public describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public recycle()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/service/gesture/GestureEvent;->clearForRecycle()V

    sget-object v1, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSync:Lcom/samsung/android/service/gesture/GestureEvent;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    sget-object v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPool:Lcom/samsung/android/service/gesture/GestureEvent;

    iput-object v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mNextLink:Lcom/samsung/android/service/gesture/GestureEvent;

    sput-object p0, Lcom/samsung/android/service/gesture/GestureEvent;->mPool:Lcom/samsung/android/service/gesture/GestureEvent;

    sget v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/service/gesture/GestureEvent;->mPoolSize:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEvent(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
