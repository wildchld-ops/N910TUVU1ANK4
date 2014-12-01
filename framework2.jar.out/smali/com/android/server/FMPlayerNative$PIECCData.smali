.class Lcom/android/server/FMPlayerNative$PIECCData;
.super Ljava/lang/Object;
.source "FMPlayerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PIECCData"
.end annotation


# instance fields
.field public mECC:I

.field public mPI:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/FMPlayerNative$PIECCData;->mPI:I

    iput p2, p0, Lcom/android/server/FMPlayerNative$PIECCData;->mECC:I

    return-void
.end method
