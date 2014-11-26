.class public Lcom/android/mms/rcs/RcsState;
.super Ljava/lang/Object;
.source "RcsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/RcsState$State;
    }
.end annotation


# static fields
.field public static final BLOCKED:I = 0x6

.field public static final FAILED:I = 0x4

.field public static final SENDING:I = 0x2

.field public static final SENT:I = 0x3

.field public static final TO_SEND:I = 0x5


# instance fields
.field private mState:Lcom/android/mms/rcs/RcsState$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/mms/rcs/RcsState$State;->NOT_INITIALIZED:Lcom/android/mms/rcs/RcsState$State;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsState;->mState:Lcom/android/mms/rcs/RcsState$State;

    return-void
.end method


# virtual methods
.method public getState()Lcom/android/mms/rcs/RcsState$State;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsState;->mState:Lcom/android/mms/rcs/RcsState$State;

    return-object v0
.end method

.method public declared-synchronized setStateActivated()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/mms/rcs/RcsState$State;->ACTIVATED:Lcom/android/mms/rcs/RcsState$State;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsState;->mState:Lcom/android/mms/rcs/RcsState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateDeactivated()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/mms/rcs/RcsState$State;->DEACTIVATED:Lcom/android/mms/rcs/RcsState$State;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsState;->mState:Lcom/android/mms/rcs/RcsState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateInProgress()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/mms/rcs/RcsState$State;->PERMANENT_IN_PROGRESS:Lcom/android/mms/rcs/RcsState$State;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsState;->mState:Lcom/android/mms/rcs/RcsState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateNotInitialized()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/mms/rcs/RcsState$State;->NOT_INITIALIZED:Lcom/android/mms/rcs/RcsState$State;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsState;->mState:Lcom/android/mms/rcs/RcsState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStatePermanetDisabled()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/mms/rcs/RcsState$State;->PERMANENT_DISABLED:Lcom/android/mms/rcs/RcsState$State;

    iput-object v0, p0, Lcom/android/mms/rcs/RcsState;->mState:Lcom/android/mms/rcs/RcsState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
