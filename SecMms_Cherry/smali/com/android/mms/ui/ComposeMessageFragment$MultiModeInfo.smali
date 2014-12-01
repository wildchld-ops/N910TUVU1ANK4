.class public Lcom/android/mms/ui/ComposeMessageFragment$MultiModeInfo;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiModeInfo"
.end annotation


# static fields
.field public static final MULTIMODE_COMBINEANDFORWARD:I = 0x5

.field public static final MULTIMODE_DELETE:I = 0x1

.field public static final MULTIMODE_MULTICOPY:I = 0x4

.field public static final MULTIMODE_MULTILOCK:I = 0x2

.field public static final MULTIMODE_NONE:I = 0x0

.field public static final MULTIMODE_SAVE:I = 0x3


# instance fields
.field private mMultiMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MultiModeInfo;->mMultiMode:I

    return-void
.end method

.method public static isSupportedMode(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getIsDeleteMode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MultiModeInfo;->mMultiMode:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsMultiCombineAndForwardMode()Z
    .locals 2

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MultiModeInfo;->mMultiMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsMultiCopyMode()Z
    .locals 2

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MultiModeInfo;->mMultiMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsMultiLockMode()Z
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MultiModeInfo;->mMultiMode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsMultiMode()Z
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MultiModeInfo;->mMultiMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiMode()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$MultiModeInfo;->mMultiMode:I

    return v0
.end method

.method public setIsMultiLockMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageFragment$MultiModeInfo;->setMultiMode(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMultiMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MultiModeInfo;->mMultiMode:I

    return-void
.end method
