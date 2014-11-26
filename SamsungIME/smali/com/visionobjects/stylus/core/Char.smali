.class public Lcom/visionobjects/stylus/core/Char;
.super Ljava/lang/Object;
.source "Char.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/Char$SpacingPref;,
        Lcom/visionobjects/stylus/core/Char$GlyphForm;,
        Lcom/visionobjects/stylus/core/Char$Type;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_2(C)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_4(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_5(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/Char;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Char;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Char;->a(Lcom/visionobjects/stylus/core/Char;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_6(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_1(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_Char__SWIG_3(S)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/Char;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    goto :goto_0
.end method

.method public static fromUnicode(J)Lcom/visionobjects/stylus/core/Char;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    invoke-static {p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_fromUnicode(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public static getALM()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_ALM_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getAbsoluteValue()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_absoluteValue_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getAlmostEqualTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_almostEqualTo_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getAsymptoticallyEqualTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_asymptoticallyEqualTo_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getCloseSurrounding()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_closeSurrounding_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDblIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_dblIntegralSign_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDblSurfIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_dblSurfIntegralSign_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDegreeSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_degreeSign_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDivisionSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_divisionSign_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getDivisionSlash()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_divisionSlash_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getFSI()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_FSI_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getFractionSlash()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_fractionSlash_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getGestureDownThenLeft()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_gestureDownThenLeft_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getGestureDownThenRight()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_gestureDownThenRight_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getGestureLeft()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_gestureLeft_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getGestureRight()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_gestureRight_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getGreaterThanOrEqualTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_greaterThanOrEqualTo_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getHanFirst()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_hanFirst_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getHorizontalEllipsis()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_horizontalEllipsis_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getIdenticalTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_identicalTo_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_integralSign_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLRE()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_LRE_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLRI()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_LRI_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLRM()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_LRM_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLRO()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_LRO_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLeftRightDoubleArrow()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_leftRightDoubleArrow_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLeftwardsDoubleArrow()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_leftwardsDoubleArrow_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getLessThanOrEqualTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_lessThanOrEqualTo_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getMuchGreaterThan()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_muchGreaterThan_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getMuchLessThan()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_muchLessThan_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getMultiplicationSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_multiplicationSign_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getNotEqualTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notEqualTo_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getNotIdenticalTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notIdenticalTo_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getOpenSurrounding()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_openSurrounding_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPDF()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_PDF_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPDI()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_PDI_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPI()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_PI_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getParallelTo()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_parallelTo_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPhi()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_phi_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getPi()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_pi_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRLE()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_RLE_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRLI()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_RLI_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRLM()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_RLM_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRLO()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_RLO_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getReplacementChar()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_replacementChar_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getRightwardsDoubleArrow()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_rightwardsDoubleArrow_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getSquareRoot()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_squareRoot_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getSurfIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_surfIntegralSign_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getTplIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_tplIntegralSign_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getTplSurfIntegralSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_tplSurfIntegralSign_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getVarphi()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_varphi_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method

.method public static getVectorSign()Lcom/visionobjects/stylus/core/Char;
    .locals 5

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_vectorSign_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    goto :goto_0
.end method


# virtual methods
.method public byteCount()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_byteCount(JLcom/visionobjects/stylus/core/Char;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/Char;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/Char;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_Char(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/Char;->delete()V

    return-void
.end method

.method public has(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_has(JLcom/visionobjects/stylus/core/Char;I)Z

    move-result v0

    return v0
.end method

.method public hasAllForms()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_hasAllForms(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public hasOnlyOneForm()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_hasOnlyOneForm(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public is(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_is(JLcom/visionobjects/stylus/core/Char;I)Z

    move-result v0

    return v0
.end method

.method public isArabicDigit()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isArabicDigit(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isArabicLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isArabicLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isArabicPunctuation()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isArabicPunctuation(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isCJCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isCJCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isCJKFullSizeCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isCJKFullSizeCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isCJKPunctuation()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isCJKPunctuation(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isChineseCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isChineseCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isCircledCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isCircledCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isClosingBracketSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isClosingBracketSymbol(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isCyrillicLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isCyrillicLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isDigit()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isDigit(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isEnglishCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isEnglishCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isGreekLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isGreekLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isHebrewLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isHebrewLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isLatinLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isLatinLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isLatinPunctuation()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isLatinPunctuation(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isMirroredSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isMirroredSymbol(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isNull()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isNull(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isOpeningBracketSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isOpeningBracketSymbol(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isPairedBracketSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isPairedBracketSymbol(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isRightToLeftCharacter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isRightToLeftCharacter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isSpacing()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isSpacing(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isStretchableHalfSizePunctuation()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isStretchableHalfSizePunctuation(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isStretchableHalfSizeSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isStretchableHalfSizeSymbol(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isThaiDigit()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isThaiDigit(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isThaiLetter()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isThaiLetter(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isThaiPunctuation()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isThaiPunctuation(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public isUnsortedSymbol()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_isUnsortedSymbol(JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public nativeEquals(C)Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_nativeEquals__SWIG_1(JLcom/visionobjects/stylus/core/Char;C)Z

    move-result v0

    return v0
.end method

.method public nativeEquals(Lcom/visionobjects/stylus/core/Char;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Char;->a(Lcom/visionobjects/stylus/core/Char;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_nativeEquals__SWIG_0(JLcom/visionobjects/stylus/core/Char;JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public notEquals(C)Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notEquals__SWIG_1(JLcom/visionobjects/stylus/core/Char;C)Z

    move-result v0

    return v0
.end method

.method public notEquals(Lcom/visionobjects/stylus/core/Char;)Z
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Char;->a(Lcom/visionobjects/stylus/core/Char;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notEquals__SWIG_0(JLcom/visionobjects/stylus/core/Char;JLcom/visionobjects/stylus/core/Char;)Z

    move-result v0

    return v0
.end method

.method public prefers(IZ)Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_prefers(JLcom/visionobjects/stylus/core/Char;IZ)Z

    move-result v0

    return v0
.end method

.method public toAlternateSized()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_toAlternateSized(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public toLower()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_toLower(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public toMirrored()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_toMirrored(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public toUpper()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_toUpper(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public unicode()J
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/Char;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_unicode(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v0

    return-wide v0
.end method
