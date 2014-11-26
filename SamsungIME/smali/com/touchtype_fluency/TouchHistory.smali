.class public final Lcom/touchtype_fluency/TouchHistory;
.super Ljava/lang/Object;
.source "TouchHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/TouchHistory$ShiftState;
    }
.end annotation


# instance fields
.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/touchtype_fluency/TouchHistory;->createPeer()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/touchtype_fluency/TouchHistory;->peer:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/touchtype_fluency/TouchHistory;->createPeer()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/touchtype_fluency/TouchHistory;->addMultiCharacter(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static native areEqual(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/TouchHistory;)Z
.end method

.method private native createPeer()V
.end method

.method private native destroyPeer()V
.end method

.method static native initIDs()V
.end method


# virtual methods
.method public addCharacter(Ljava/lang/Character;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;J)V

    return-void
.end method

.method public native addCharacter(Ljava/lang/Character;J)V
.end method

.method public native addKeyPressOptions([Lcom/touchtype_fluency/KeyPress;)V
.end method

.method public addMultiCharacter(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/touchtype_fluency/TouchHistory;->addMultiCharacter(Ljava/lang/String;J)V

    return-void
.end method

.method public native addMultiCharacter(Ljava/lang/String;J)V
.end method

.method public addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;J)V

    return-void
.end method

.method public native addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;J)V
.end method

.method public addTrace(Lcom/touchtype_fluency/Point;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/touchtype_fluency/TouchHistory;->addTrace(Lcom/touchtype_fluency/Point;J)V

    return-void
.end method

.method public native addTrace(Lcom/touchtype_fluency/Point;J)V
.end method

.method public native appendHistory(Lcom/touchtype_fluency/TouchHistory;)V
.end method

.method public appendSample(Lcom/touchtype_fluency/Point;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;J)V

    return-void
.end method

.method public native appendSample(Lcom/touchtype_fluency/Point;J)V
.end method

.method public native dropFirst(I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public native dropFirstTerms(Lcom/touchtype_fluency/Prediction;I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public native dropLast(I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/touchtype_fluency/TouchHistory;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/touchtype_fluency/TouchHistory;

    invoke-static {p0, p1}, Lcom/touchtype_fluency/TouchHistory;->areEqual(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/TouchHistory;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype_fluency/TouchHistory;->destroyPeer()V

    return-void
.end method

.method public native hashCode()I
.end method

.method public native size()I
.end method

.method public native takeFirst(I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public native takeFirstTerms(Lcom/touchtype_fluency/Prediction;I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public native takeLast(I)Lcom/touchtype_fluency/TouchHistory;
.end method

.method public native toString()Ljava/lang/String;
.end method
