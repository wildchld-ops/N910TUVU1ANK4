.class public Lcom/android/mms/rcs/Features;
.super Ljava/lang/Object;
.source "Features.java"


# instance fields
.field private mIshSaveFile:Z

.field private mPermanentDisable:Z

.field private mTimestamp:Z

.field private mTrafficSettings:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUseIshSaveFileOption()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/Features;->mIshSaveFile:Z

    return v0
.end method

.method public isUsePermanentOption()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/Features;->mPermanentDisable:Z

    return v0
.end method

.method public isUseTimestampOption()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/Features;->mTimestamp:Z

    return v0
.end method

.method public isUseTrafficOption()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/Features;->mTrafficSettings:Z

    return v0
.end method

.method public setUseIshSaveFileOption(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/rcs/Features;->mIshSaveFile:Z

    return-void
.end method

.method public setUsePermanentOption(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/rcs/Features;->mPermanentDisable:Z

    return-void
.end method

.method public setUseTimestampOption(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/rcs/Features;->mTimestamp:Z

    return-void
.end method

.method public setUseTrafficOption(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/rcs/Features;->mTrafficSettings:Z

    return-void
.end method
