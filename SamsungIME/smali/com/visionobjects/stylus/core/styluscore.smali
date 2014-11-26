.class Lcom/visionobjects/stylus/core/styluscore;
.super Ljava/lang/Object;
.source "styluscore.java"

# interfaces
.implements Lcom/visionobjects/stylus/core/styluscoreConstants;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/visionobjects/stylus/core/Point;Lcom/visionobjects/stylus/core/Point;)Lcom/visionobjects/stylus/core/Point;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/Point;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->add(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v6
.end method

.method public static db(Lcom/visionobjects/stylus/core/Point;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->db__SWIG_0(JLcom/visionobjects/stylus/core/Point;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static db(Lcom/visionobjects/stylus/core/Rect;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Rect;->a(Lcom/visionobjects/stylus/core/Rect;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->db__SWIG_1(JLcom/visionobjects/stylus/core/Rect;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static db(Lcom/visionobjects/stylus/core/Segment;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->db__SWIG_2(JLcom/visionobjects/stylus/core/Segment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChar_ALM_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_ALM_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_FSI_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_FSI_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_LRE_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_LRE_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_LRI_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_LRI_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_LRM_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_LRM_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_LRO_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_LRO_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_PDF_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_PDF_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_PDI_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_PDI_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_PI_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_PI_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_RLE_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_RLE_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_RLI_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_RLI_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_RLM_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_RLM_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_RLO_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_RLO_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_absoluteSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_absoluteSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_almostEqualTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_almostEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_asymptoticallyEqualTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_asymptoticallyEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_dblIntegralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_dblIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_dblSurfIntegralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_dblSurfIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_degreeSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_degreeSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_divisionSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_divisionSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_divisionSlash_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_divisionSlash_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_fractionSlash_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_fractionSlash_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_greaterThanOrEqualTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_greaterThanOrEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_hanOne_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_hanOne_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_horizontalEllipsis_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_horizontalEllipsis_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_identicalTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_identicalTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_integralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_integralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_leftRightDoubleArrow_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_leftRightDoubleArrow_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_leftwardsDoubleArrow_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_leftwardsDoubleArrow_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_lessThanOrEqualTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_lessThanOrEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_muchGreaterThan_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_muchGreaterThan_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_muchLessThan_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_muchLessThan_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_multiplicationSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_multiplicationSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_notEqualTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notEqualTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_notIdenticalTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_notIdenticalTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_parallelTo_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_parallelTo_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_phi_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_phi_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_pi_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_pi_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_replacementChar_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_replacementChar_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_rightwardsDoubleArrow_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_rightwardsDoubleArrow_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_squareRoot_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_squareRoot_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_surfIntegralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_surfIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_tplIntegralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_tplIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_tplSurfIntegralSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_tplSurfIntegralSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_varphi_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_varphi_unicode_get()I

    move-result v0

    return v0
.end method

.method public static getChar_vectorSign_unicode()I
    .locals 1

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->Char_vectorSign_unicode_get()I

    move-result v0

    return v0
.end method

.method public static logFmt(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->logFmt(ILjava/lang/String;)V

    return-void
.end method

.method public static minus(Lcom/visionobjects/stylus/core/Point;Lcom/visionobjects/stylus/core/Point;)Lcom/visionobjects/stylus/core/Point;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/Point;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Point;->a(Lcom/visionobjects/stylus/core/Point;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->minus(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/Point;-><init>(JZ)V

    return-object v6
.end method
