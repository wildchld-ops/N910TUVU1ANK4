.class Lcom/visionobjects/stylus/core/styluscoreJNI;
.super Ljava/lang/Object;
.source "styluscoreJNI.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native Archive_getByteCount(JLcom/visionobjects/stylus/core/Archive;)I
.end method

.method public static final native Archive_getBytes(JLcom/visionobjects/stylus/core/Archive;)[B
.end method

.method public static final native Archive_getVersion(JLcom/visionobjects/stylus/core/Archive;)J
.end method

.method public static final native Archive_nativeEquals(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/Archive;)Z
.end method

.method public static final native Archive_readInkField(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)J
.end method

.method public static final native Archive_readInkItem(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)J
.end method

.method public static final native Archive_readInt(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)I
.end method

.method public static final native Archive_readSegment(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)J
.end method

.method public static final native Archive_setVersion(JLcom/visionobjects/stylus/core/Archive;J)V
.end method

.method public static final native Archive_writeInkField(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkField;)V
.end method

.method public static final native Archive_writeInkItem(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/InkItem;)V
.end method

.method public static final native Archive_writeInt(JLcom/visionobjects/stylus/core/Archive;I)V
.end method

.method public static final native Archive_writeSegment(JLcom/visionobjects/stylus/core/Archive;JLcom/visionobjects/stylus/core/Segment;)V
.end method

.method public static final native CalcInputMethod_SWIGUpcast(J)J
.end method

.method public static final native CalcInputMethod_solve(JLcom/visionobjects/stylus/core/CalcInputMethod;JLcom/visionobjects/stylus/core/InkField;ILjava/lang/Object;IJLcom/visionobjects/stylus/core/Char;I)J
.end method

.method public static final native Candidate_append(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Segment;)V
.end method

.method public static final native Candidate_flags(JLcom/visionobjects/stylus/core/Candidate;)I
.end method

.method public static final native Candidate_grafted(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Candidate;I)J
.end method

.method public static final native Candidate_hashCode(JLcom/visionobjects/stylus/core/Candidate;)I
.end method

.method public static final native Candidate_isBidiMarker(JLcom/visionobjects/stylus/core/Candidate;)Z
.end method

.method public static final native Candidate_isEmpty(JLcom/visionobjects/stylus/core/Candidate;)Z
.end method

.method public static final native Candidate_isLineBreak(JLcom/visionobjects/stylus/core/Candidate;)Z
.end method

.method public static final native Candidate_isSpace(JLcom/visionobjects/stylus/core/Candidate;)Z
.end method

.method public static final native Candidate_isTab(JLcom/visionobjects/stylus/core/Candidate;)Z
.end method

.method public static final native Candidate_isWhitespace(JLcom/visionobjects/stylus/core/Candidate;)Z
.end method

.method public static final native Candidate_label(JLcom/visionobjects/stylus/core/Candidate;)[B
.end method

.method public static final native Candidate_mapped(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/ListInkItem;)J
.end method

.method public static final native Candidate_mirrored(JLcom/visionobjects/stylus/core/Candidate;)J
.end method

.method public static final native Candidate_nativeEquals(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Candidate;)Z
.end method

.method public static final native Candidate_normalizedRecognitionScore(JLcom/visionobjects/stylus/core/Candidate;)F
.end method

.method public static final native Candidate_normalized__SWIG_0(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ListInt;Z)J
.end method

.method public static final native Candidate_normalized__SWIG_1(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ListInt;)J
.end method

.method public static final native Candidate_notEquals(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Candidate;)Z
.end method

.method public static final native Candidate_resemblanceScore(JLcom/visionobjects/stylus/core/Candidate;)F
.end method

.method public static final native Candidate_seamlesslyGraftsTo(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Candidate;)Z
.end method

.method public static final native Candidate_segments(JLcom/visionobjects/stylus/core/Candidate;)J
.end method

.method public static final native Candidate_setFlags(JLcom/visionobjects/stylus/core/Candidate;I)V
.end method

.method public static final native Candidate_setLabel(JLcom/visionobjects/stylus/core/Candidate;[B)V
.end method

.method public static final native Candidate_setNormalizedRecognitionScore(JLcom/visionobjects/stylus/core/Candidate;F)V
.end method

.method public static final native Candidate_setResemblanceScore(JLcom/visionobjects/stylus/core/Candidate;F)V
.end method

.method public static final native Candidate_setType(JLcom/visionobjects/stylus/core/Candidate;I)V
.end method

.method public static final native Candidate_simplified(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/ListInkItem;JLcom/visionobjects/stylus/core/ListInt;)J
.end method

.method public static final native Candidate_split(JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/Candidate;JLcom/visionobjects/stylus/core/Candidate;Z)V
.end method

.method public static final native Candidate_timeShifted(JLcom/visionobjects/stylus/core/Candidate;J)J
.end method

.method public static final native Candidate_type(JLcom/visionobjects/stylus/core/Candidate;)I
.end method

.method public static final native Char_ALM_get()J
.end method

.method public static final native Char_ALM_unicode_get()I
.end method

.method public static final native Char_FSI_get()J
.end method

.method public static final native Char_FSI_unicode_get()I
.end method

.method public static final native Char_LRE_get()J
.end method

.method public static final native Char_LRE_unicode_get()I
.end method

.method public static final native Char_LRI_get()J
.end method

.method public static final native Char_LRI_unicode_get()I
.end method

.method public static final native Char_LRM_get()J
.end method

.method public static final native Char_LRM_unicode_get()I
.end method

.method public static final native Char_LRO_get()J
.end method

.method public static final native Char_LRO_unicode_get()I
.end method

.method public static final native Char_PDF_get()J
.end method

.method public static final native Char_PDF_unicode_get()I
.end method

.method public static final native Char_PDI_get()J
.end method

.method public static final native Char_PDI_unicode_get()I
.end method

.method public static final native Char_PI_get()J
.end method

.method public static final native Char_PI_unicode_get()I
.end method

.method public static final native Char_RLE_get()J
.end method

.method public static final native Char_RLE_unicode_get()I
.end method

.method public static final native Char_RLI_get()J
.end method

.method public static final native Char_RLI_unicode_get()I
.end method

.method public static final native Char_RLM_get()J
.end method

.method public static final native Char_RLM_unicode_get()I
.end method

.method public static final native Char_RLO_get()J
.end method

.method public static final native Char_RLO_unicode_get()I
.end method

.method public static final native Char_absoluteSign_unicode_get()I
.end method

.method public static final native Char_absoluteValue_get()J
.end method

.method public static final native Char_almostEqualTo_get()J
.end method

.method public static final native Char_almostEqualTo_unicode_get()I
.end method

.method public static final native Char_asymptoticallyEqualTo_get()J
.end method

.method public static final native Char_asymptoticallyEqualTo_unicode_get()I
.end method

.method public static final native Char_byteCount(JLcom/visionobjects/stylus/core/Char;)I
.end method

.method public static final native Char_closeSurrounding_get()J
.end method

.method public static final native Char_dblIntegralSign_get()J
.end method

.method public static final native Char_dblIntegralSign_unicode_get()I
.end method

.method public static final native Char_dblSurfIntegralSign_get()J
.end method

.method public static final native Char_dblSurfIntegralSign_unicode_get()I
.end method

.method public static final native Char_degreeSign_get()J
.end method

.method public static final native Char_degreeSign_unicode_get()I
.end method

.method public static final native Char_divisionSign_get()J
.end method

.method public static final native Char_divisionSign_unicode_get()I
.end method

.method public static final native Char_divisionSlash_get()J
.end method

.method public static final native Char_divisionSlash_unicode_get()I
.end method

.method public static final native Char_fractionSlash_get()J
.end method

.method public static final native Char_fractionSlash_unicode_get()I
.end method

.method public static final native Char_fromUnicode(J)J
.end method

.method public static final native Char_gestureDownThenLeft_get()J
.end method

.method public static final native Char_gestureDownThenRight_get()J
.end method

.method public static final native Char_gestureLeft_get()J
.end method

.method public static final native Char_gestureRight_get()J
.end method

.method public static final native Char_greaterThanOrEqualTo_get()J
.end method

.method public static final native Char_greaterThanOrEqualTo_unicode_get()I
.end method

.method public static final native Char_hanFirst_get()J
.end method

.method public static final native Char_hanOne_unicode_get()I
.end method

.method public static final native Char_has(JLcom/visionobjects/stylus/core/Char;I)Z
.end method

.method public static final native Char_hasAllForms(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_hasOnlyOneForm(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_horizontalEllipsis_get()J
.end method

.method public static final native Char_horizontalEllipsis_unicode_get()I
.end method

.method public static final native Char_identicalTo_get()J
.end method

.method public static final native Char_identicalTo_unicode_get()I
.end method

.method public static final native Char_integralSign_get()J
.end method

.method public static final native Char_integralSign_unicode_get()I
.end method

.method public static final native Char_is(JLcom/visionobjects/stylus/core/Char;I)Z
.end method

.method public static final native Char_isArabicDigit(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isArabicLetter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isArabicPunctuation(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isCJCharacter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isCJKFullSizeCharacter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isCJKPunctuation(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isChineseCharacter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isCircledCharacter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isClosingBracketSymbol(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isCyrillicLetter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isDigit(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isEnglishCharacter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isGreekLetter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isHebrewLetter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isLatinLetter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isLatinPunctuation(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isMirroredSymbol(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isNull(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isOpeningBracketSymbol(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isPairedBracketSymbol(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isRightToLeftCharacter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isSpacing(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isStretchableHalfSizePunctuation(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isStretchableHalfSizeSymbol(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isThaiDigit(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isThaiLetter(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isThaiPunctuation(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_isUnsortedSymbol(JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_leftRightDoubleArrow_get()J
.end method

.method public static final native Char_leftRightDoubleArrow_unicode_get()I
.end method

.method public static final native Char_leftwardsDoubleArrow_get()J
.end method

.method public static final native Char_leftwardsDoubleArrow_unicode_get()I
.end method

.method public static final native Char_lessThanOrEqualTo_get()J
.end method

.method public static final native Char_lessThanOrEqualTo_unicode_get()I
.end method

.method public static final native Char_muchGreaterThan_get()J
.end method

.method public static final native Char_muchGreaterThan_unicode_get()I
.end method

.method public static final native Char_muchLessThan_get()J
.end method

.method public static final native Char_muchLessThan_unicode_get()I
.end method

.method public static final native Char_multiplicationSign_get()J
.end method

.method public static final native Char_multiplicationSign_unicode_get()I
.end method

.method public static final native Char_nativeEquals__SWIG_0(JLcom/visionobjects/stylus/core/Char;JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_nativeEquals__SWIG_1(JLcom/visionobjects/stylus/core/Char;C)Z
.end method

.method public static final native Char_notEqualTo_get()J
.end method

.method public static final native Char_notEqualTo_unicode_get()I
.end method

.method public static final native Char_notEquals__SWIG_0(JLcom/visionobjects/stylus/core/Char;JLcom/visionobjects/stylus/core/Char;)Z
.end method

.method public static final native Char_notEquals__SWIG_1(JLcom/visionobjects/stylus/core/Char;C)Z
.end method

.method public static final native Char_notIdenticalTo_get()J
.end method

.method public static final native Char_notIdenticalTo_unicode_get()I
.end method

.method public static final native Char_openSurrounding_get()J
.end method

.method public static final native Char_parallelTo_get()J
.end method

.method public static final native Char_parallelTo_unicode_get()I
.end method

.method public static final native Char_phi_get()J
.end method

.method public static final native Char_phi_unicode_get()I
.end method

.method public static final native Char_pi_get()J
.end method

.method public static final native Char_pi_unicode_get()I
.end method

.method public static final native Char_prefers(JLcom/visionobjects/stylus/core/Char;IZ)Z
.end method

.method public static final native Char_replacementChar_get()J
.end method

.method public static final native Char_replacementChar_unicode_get()I
.end method

.method public static final native Char_rightwardsDoubleArrow_get()J
.end method

.method public static final native Char_rightwardsDoubleArrow_unicode_get()I
.end method

.method public static final native Char_squareRoot_get()J
.end method

.method public static final native Char_squareRoot_unicode_get()I
.end method

.method public static final native Char_surfIntegralSign_get()J
.end method

.method public static final native Char_surfIntegralSign_unicode_get()I
.end method

.method public static final native Char_toAlternateSized(JLcom/visionobjects/stylus/core/Char;)J
.end method

.method public static final native Char_toLower(JLcom/visionobjects/stylus/core/Char;)J
.end method

.method public static final native Char_toMirrored(JLcom/visionobjects/stylus/core/Char;)J
.end method

.method public static final native Char_toUpper(JLcom/visionobjects/stylus/core/Char;)J
.end method

.method public static final native Char_tplIntegralSign_get()J
.end method

.method public static final native Char_tplIntegralSign_unicode_get()I
.end method

.method public static final native Char_tplSurfIntegralSign_get()J
.end method

.method public static final native Char_tplSurfIntegralSign_unicode_get()I
.end method

.method public static final native Char_unicode(JLcom/visionobjects/stylus/core/Char;)J
.end method

.method public static final native Char_varphi_get()J
.end method

.method public static final native Char_varphi_unicode_get()I
.end method

.method public static final native Char_vectorSign_get()J
.end method

.method public static final native Char_vectorSign_unicode_get()I
.end method

.method public static final native CursiveInputMethod_SWIGUpcast(J)J
.end method

.method public static final native Formatter_fontifyCalculationField(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/ListRect;JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native Formatter_fontifyRange(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ListRect;JLcom/visionobjects/stylus/core/ListFloat;JLcom/visionobjects/stylus/core/ListFloat;)J
.end method

.method public static final native Formatter_fontifyRangeOnOneLine(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ListRect;FF)J
.end method

.method public static final native Formatter_formatCalcOutput__SWIG_0(JLcom/visionobjects/stylus/core/InkField;I)[B
.end method

.method public static final native Formatter_formatCalcOutput__SWIG_1(JLcom/visionobjects/stylus/core/InkField;)[B
.end method

.method public static final native InkDebug_SWIGUpcast(J)J
.end method

.method public static final native InkField_cutAround(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkField_cutAt(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;)J
.end method

.method public static final native InkField_direction(JLcom/visionobjects/stylus/core/InkField;)I
.end method

.method public static final native InkField_formatted(JLcom/visionobjects/stylus/core/InkField;I)J
.end method

.method public static final native InkField_formattedExplicitSpaces(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/ListInkLocation;JLcom/visionobjects/stylus/core/ListInt;)J
.end method

.method public static final native InkField_fromCandidate(JLcom/visionobjects/stylus/core/Candidate;)J
.end method

.method public static final native InkField_fromItemList__SWIG_0(JLcom/visionobjects/stylus/core/ListInkItem;[BFIIFFJLcom/visionobjects/stylus/core/ListInt;)J
.end method

.method public static final native InkField_fromItemList__SWIG_1(JLcom/visionobjects/stylus/core/ListInkItem;[BFIIFF)J
.end method

.method public static final native InkField_fromItemList__SWIG_10(JLcom/visionobjects/stylus/core/ListInkItem;[B[BFF)J
.end method

.method public static final native InkField_fromItemList__SWIG_11(JLcom/visionobjects/stylus/core/ListInkItem;[B[BF)J
.end method

.method public static final native InkField_fromItemList__SWIG_12(JLcom/visionobjects/stylus/core/ListInkItem;[B[B)J
.end method

.method public static final native InkField_fromItemList__SWIG_2(JLcom/visionobjects/stylus/core/ListInkItem;[BFIIF)J
.end method

.method public static final native InkField_fromItemList__SWIG_3(JLcom/visionobjects/stylus/core/ListInkItem;[BFII)J
.end method

.method public static final native InkField_fromItemList__SWIG_4(JLcom/visionobjects/stylus/core/ListInkItem;[BFI)J
.end method

.method public static final native InkField_fromItemList__SWIG_5(JLcom/visionobjects/stylus/core/ListInkItem;[BF)J
.end method

.method public static final native InkField_fromItemList__SWIG_6(JLcom/visionobjects/stylus/core/ListInkItem;[B)J
.end method

.method public static final native InkField_fromItemList__SWIG_7(JLcom/visionobjects/stylus/core/ListInkItem;)J
.end method

.method public static final native InkField_fromItemList__SWIG_8(JLcom/visionobjects/stylus/core/ListInkItem;[B[BFFFJLcom/visionobjects/stylus/core/ListInt;)J
.end method

.method public static final native InkField_fromItemList__SWIG_9(JLcom/visionobjects/stylus/core/ListInkItem;[B[BFFF)J
.end method

.method public static final native InkField_fromItem__SWIG_0(JLcom/visionobjects/stylus/core/InkItem;[BFIIFF)J
.end method

.method public static final native InkField_fromItem__SWIG_1(JLcom/visionobjects/stylus/core/InkItem;[BFIIF)J
.end method

.method public static final native InkField_fromItem__SWIG_2(JLcom/visionobjects/stylus/core/InkItem;[BFII)J
.end method

.method public static final native InkField_fromItem__SWIG_3(JLcom/visionobjects/stylus/core/InkItem;[BFI)J
.end method

.method public static final native InkField_fromItem__SWIG_4(JLcom/visionobjects/stylus/core/InkItem;[BF)J
.end method

.method public static final native InkField_fromItem__SWIG_5(JLcom/visionobjects/stylus/core/InkItem;[B)J
.end method

.method public static final native InkField_fromItem__SWIG_6(JLcom/visionobjects/stylus/core/InkItem;)J
.end method

.method public static final native InkField_fromLabel__SWIG_0([BII)J
.end method

.method public static final native InkField_fromLabel__SWIG_1([BI)J
.end method

.method public static final native InkField_fromLabel__SWIG_2([B)J
.end method

.method public static final native InkField_fromParts(JLcom/visionobjects/stylus/core/ListInkField;JLcom/visionobjects/stylus/core/ListInkItem;)J
.end method

.method public static final native InkField_fromSegment(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native InkField_fromWordSegmentList(JLcom/visionobjects/stylus/core/ListSegment;)J
.end method

.method public static final native InkField_getCircledCharactersRange(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_getGuideBoxes(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_grafted__SWIG_0(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkField;I)J
.end method

.method public static final native InkField_grafted__SWIG_1(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_grafted__SWIG_2(JLcom/visionobjects/stylus/core/ListInkField;I)J
.end method

.method public static final native InkField_inkLayout(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_isEmpty(JLcom/visionobjects/stylus/core/InkField;)Z
.end method

.method public static final native InkField_items(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_lineBreaksCount(JLcom/visionobjects/stylus/core/InkField;)I
.end method

.method public static final native InkField_lineBreaksNormalized(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_lineRangesFromLineBreaks(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_mapped(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/Transform;)J
.end method

.method public static final native InkField_normalized__SWIG_0(JLcom/visionobjects/stylus/core/InkField;Z)J
.end method

.method public static final native InkField_normalized__SWIG_1(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_pendingStrokes(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_remove(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)V
.end method

.method public static final native InkField_segments__SWIG_0(JLcom/visionobjects/stylus/core/InkField;I)J
.end method

.method public static final native InkField_segments__SWIG_1(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_selectedLabel(JLcom/visionobjects/stylus/core/InkField;)[B
.end method

.method public static final native InkField_setInkLayout(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLayout;)V
.end method

.method public static final native InkField_setPendingStrokes(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/ListInkItem;)V
.end method

.method public static final native InkField_setTag(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkTag;)V
.end method

.method public static final native InkField_setTopLevelSegment(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/Segment;)V
.end method

.method public static final native InkField_setTransform(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/Transform;)V
.end method

.method public static final native InkField_simplified(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_split(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkField;)V
.end method

.method public static final native InkField_tagRange(JLcom/visionobjects/stylus/core/InkField;I)J
.end method

.method public static final native InkField_taggedWith__SWIG_0(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkTag;Z)J
.end method

.method public static final native InkField_taggedWith__SWIG_1(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkTag;)J
.end method

.method public static final native InkField_tags(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_timeShifted(JLcom/visionobjects/stylus/core/InkField;J)J
.end method

.method public static final native InkField_topLevelSegment(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkField_transform(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InkItemUserParamsListener_createUserParamsFrom(JLcom/visionobjects/stylus/core/InkItemUserParamsListener;JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;IJLcom/visionobjects/stylus/core/Transform;)Ljava/lang/Object;
.end method

.method public static final native InkItemUserParamsListener_fromBytesToUserParams(JLcom/visionobjects/stylus/core/InkItemUserParamsListener;JLcom/visionobjects/stylus/core/InkItem;[B)Ljava/lang/Object;
.end method

.method public static final native InkItemUserParamsListener_fromUserParamsToBytes(JLcom/visionobjects/stylus/core/InkItemUserParamsListener;JLcom/visionobjects/stylus/core/InkItem;Ljava/lang/Object;)[B
.end method

.method public static final native InkItem_barycenter__SWIG_0(JLcom/visionobjects/stylus/core/InkItem;)J
.end method

.method public static final native InkItem_barycenter__SWIG_1(JLcom/visionobjects/stylus/core/Path;)J
.end method

.method public static final native InkItem_boundingRect__SWIG_0(JLcom/visionobjects/stylus/core/InkItem;)J
.end method

.method public static final native InkItem_boundingRect__SWIG_1(JLcom/visionobjects/stylus/core/Path;)J
.end method

.method public static final native InkItem_createCharBox__SWIG_0(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/VoTimeStamp;)J
.end method

.method public static final native InkItem_createCharBox__SWIG_1(JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native InkItem_createFlowMarker__SWIG_0(IJLcom/visionobjects/stylus/core/VoTimeStamp;)J
.end method

.method public static final native InkItem_createFlowMarker__SWIG_1(I)J
.end method

.method public static final native InkItem_createGuideBox__SWIG_0(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/VoTimeStamp;)J
.end method

.method public static final native InkItem_createGuideBox__SWIG_1(JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native InkItem_createStringHolder__SWIG_0(JJLcom/visionobjects/stylus/core/VoTimeStamp;)J
.end method

.method public static final native InkItem_createStringHolder__SWIG_1(J)J
.end method

.method public static final native InkItem_createStroke__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)J
.end method

.method public static final native InkItem_createStroke__SWIG_1(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/VoTimeStamp;)J
.end method

.method public static final native InkItem_createStroke__SWIG_2(JLcom/visionobjects/stylus/core/Path;)J
.end method

.method public static final native InkItem_duration(JLcom/visionobjects/stylus/core/InkItem;)I
.end method

.method public static final native InkItem_flowMarker(JLcom/visionobjects/stylus/core/InkItem;)I
.end method

.method public static final native InkItem_getUserParams(JLcom/visionobjects/stylus/core/InkItem;)Ljava/lang/Object;
.end method

.method public static final native InkItem_hashCode(JLcom/visionobjects/stylus/core/InkItem;)I
.end method

.method public static final native InkItem_is(JLcom/visionobjects/stylus/core/InkItem;I)Z
.end method

.method public static final native InkItem_isEmpty(JLcom/visionobjects/stylus/core/InkItem;)Z
.end method

.method public static final native InkItem_isGreater(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z
.end method

.method public static final native InkItem_isGreaterOrEqual(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z
.end method

.method public static final native InkItem_isLower(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z
.end method

.method public static final native InkItem_isLowerOrEqual(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z
.end method

.method public static final native InkItem_length(JLcom/visionobjects/stylus/core/InkItem;)I
.end method

.method public static final native InkItem_mapped(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/Transform;)J
.end method

.method public static final native InkItem_nativeEquals(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z
.end method

.method public static final native InkItem_notEquals(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItem;)Z
.end method

.method public static final native InkItem_path(JLcom/visionobjects/stylus/core/InkItem;)J
.end method

.method public static final native InkItem_setDuration(JLcom/visionobjects/stylus/core/InkItem;J)V
.end method

.method public static final native InkItem_setTimeStamp(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/VoTimeStamp;)V
.end method

.method public static final native InkItem_setUserParams(JLcom/visionobjects/stylus/core/InkItem;Ljava/lang/Object;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)V
.end method

.method public static final native InkItem_simplified(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/IntegerRange;)J
.end method

.method public static final native InkItem_timeStamp(JLcom/visionobjects/stylus/core/InkItem;)J
.end method

.method public static final native InkItem_timeStampAt(JLcom/visionobjects/stylus/core/InkItem;I)J
.end method

.method public static final native InkItem_type(JLcom/visionobjects/stylus/core/InkItem;)I
.end method

.method public static final native InkItem_updateUserParametersListener(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)Z
.end method

.method public static final native InkLayout_ascenderShift(JLcom/visionobjects/stylus/core/InkLayout;)F
.end method

.method public static final native InkLayout_clearGuidelines(JLcom/visionobjects/stylus/core/InkLayout;)V
.end method

.method public static final native InkLayout_defaultDirection(JLcom/visionobjects/stylus/core/InkLayout;)I
.end method

.method public static final native InkLayout_descenderShift(JLcom/visionobjects/stylus/core/InkLayout;)F
.end method

.method public static final native InkLayout_getDirectionFromLocale([B)I
.end method

.method public static final native InkLayout_getNearestGuideline(JLcom/visionobjects/stylus/core/InkLayout;F)F
.end method

.method public static final native InkLayout_guidelineCount(JLcom/visionobjects/stylus/core/InkLayout;)I
.end method

.method public static final native InkLayout_guidelineGap(JLcom/visionobjects/stylus/core/InkLayout;)F
.end method

.method public static final native InkLayout_guidelinePos(JLcom/visionobjects/stylus/core/InkLayout;)F
.end method

.method public static final native InkLayout_midlineShift(JLcom/visionobjects/stylus/core/InkLayout;)F
.end method

.method public static final native InkLayout_modifiers(JLcom/visionobjects/stylus/core/InkLayout;)I
.end method

.method public static final native InkLayout_setAscenderShift(JLcom/visionobjects/stylus/core/InkLayout;F)V
.end method

.method public static final native InkLayout_setDefaultDirection(JLcom/visionobjects/stylus/core/InkLayout;I)V
.end method

.method public static final native InkLayout_setDescenderShift(JLcom/visionobjects/stylus/core/InkLayout;F)V
.end method

.method public static final native InkLayout_setGuidelines__SWIG_0(JLcom/visionobjects/stylus/core/InkLayout;FFI)V
.end method

.method public static final native InkLayout_setGuidelines__SWIG_1(JLcom/visionobjects/stylus/core/InkLayout;FF)V
.end method

.method public static final native InkLayout_setGuidelines__SWIG_2(JLcom/visionobjects/stylus/core/InkLayout;F)V
.end method

.method public static final native InkLayout_setMidlineShift(JLcom/visionobjects/stylus/core/InkLayout;F)V
.end method

.method public static final native InkLayout_setModifiers(JLcom/visionobjects/stylus/core/InkLayout;I)V
.end method

.method public static final native InkLocation_isAt(JLcom/visionobjects/stylus/core/InkLocation;JLcom/visionobjects/stylus/core/InkItem;I)Z
.end method

.method public static final native InkLocation_isAtBeginningOfItem(JLcom/visionobjects/stylus/core/InkLocation;)Z
.end method

.method public static final native InkLocation_isAtEndOfItem(JLcom/visionobjects/stylus/core/InkLocation;)Z
.end method

.method public static final native InkLocation_isBefore(JLcom/visionobjects/stylus/core/InkLocation;JLcom/visionobjects/stylus/core/InkLocation;)Z
.end method

.method public static final native InkLocation_isInsideStroke(JLcom/visionobjects/stylus/core/InkLocation;)Z
.end method

.method public static final native InkLocation_item(JLcom/visionobjects/stylus/core/InkLocation;)J
.end method

.method public static final native InkLocation_location(JLcom/visionobjects/stylus/core/InkLocation;)J
.end method

.method public static final native InkLocation_nativeEquals(JLcom/visionobjects/stylus/core/InkLocation;JLcom/visionobjects/stylus/core/InkLocation;)Z
.end method

.method public static final native InkLocation_notEquals(JLcom/visionobjects/stylus/core/InkLocation;JLcom/visionobjects/stylus/core/InkLocation;)Z
.end method

.method public static final native InkLocation_point(JLcom/visionobjects/stylus/core/InkLocation;)I
.end method

.method public static final native InkLocation_setAtBeginningOfStroke(JLcom/visionobjects/stylus/core/InkLocation;)V
.end method

.method public static final native InkLocation_setAtEndOfStroke(JLcom/visionobjects/stylus/core/InkLocation;)V
.end method

.method public static final native InkLocation_setInsideStrokeAtPoint(JLcom/visionobjects/stylus/core/InkLocation;I)Z
.end method

.method public static final native InkRange_append__SWIG_0(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ItemRange;I)I
.end method

.method public static final native InkRange_append__SWIG_1(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ItemRange;)I
.end method

.method public static final native InkRange_append__SWIG_2(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_barycenter(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_begin(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_boundingRect(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_contains__SWIG_0(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkLocation;)Z
.end method

.method public static final native InkRange_contains__SWIG_1(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)Z
.end method

.method public static final native InkRange_duration(JLcom/visionobjects/stylus/core/InkRange;)I
.end method

.method public static final native InkRange_end(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_extractPaths(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_getRealInkRange(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_getRealInkRangeBoundingRect(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_has(JLcom/visionobjects/stylus/core/InkRange;I)Z
.end method

.method public static final native InkRange_hashCode(JLcom/visionobjects/stylus/core/InkRange;)I
.end method

.method public static final native InkRange_intersected(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_intersects(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)Z
.end method

.method public static final native InkRange_is(JLcom/visionobjects/stylus/core/InkRange;I)Z
.end method

.method public static final native InkRange_isEmpty(JLcom/visionobjects/stylus/core/InkRange;)Z
.end method

.method public static final native InkRange_isolatedForwardLigatureRemoved(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_length(JLcom/visionobjects/stylus/core/InkRange;)I
.end method

.method public static final native InkRange_limits(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_mapped(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/ListInkItem;)J
.end method

.method public static final native InkRange_nativeEquals(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)Z
.end method

.method public static final native InkRange_notEquals(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)Z
.end method

.method public static final native InkRange_rangeAt(JLcom/visionobjects/stylus/core/InkRange;I)J
.end method

.method public static final native InkRange_rangeCount(JLcom/visionobjects/stylus/core/InkRange;)I
.end method

.method public static final native InkRange_ranges(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_sanityCheck(JLcom/visionobjects/stylus/core/InkRange;)Z
.end method

.method public static final native InkRange_simplified(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/ListInkItem;JLcom/visionobjects/stylus/core/ListInt;)J
.end method

.method public static final native InkRange_split(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)V
.end method

.method public static final native InkRange_substracted(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_timeShifted(JLcom/visionobjects/stylus/core/InkRange;J)J
.end method

.method public static final native InkRange_timeStamp(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkRange_united(JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InkSearchListener_configured(JLcom/visionobjects/stylus/core/InkSearchListener;JLcom/visionobjects/stylus/core/InkSearch;I)V
.end method

.method public static final native InkSearchListener_indexingCanceled(JLcom/visionobjects/stylus/core/InkSearchListener;)V
.end method

.method public static final native InkSearchListener_indexingProgress(JLcom/visionobjects/stylus/core/InkSearchListener;II)Z
.end method

.method public static final native InkSearchListener_searchCallBack(JLcom/visionobjects/stylus/core/InkSearchListener;JLcom/visionobjects/stylus/core/ListSearchResult;)V
.end method

.method public static final native InkSearchListener_searchCanceled(JLcom/visionobjects/stylus/core/InkSearchListener;)V
.end method

.method public static final native InkSearchListener_searchProgress(JLcom/visionobjects/stylus/core/InkSearchListener;II)Z
.end method

.method public static final native InkSearch_buildIndex(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InkField;Ljava/nio/channels/WritableByteChannel;S)V
.end method

.method public static final native InkSearch_cancel(JLcom/visionobjects/stylus/core/InkSearch;)V
.end method

.method public static final native InkSearch_search(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InkField;[BLjava/nio/channels/ReadableByteChannel;)V
.end method

.method public static final native InkSearch_setConfig(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InputMethodConfig;)V
.end method

.method public static final native InkSearch_setListener(JLcom/visionobjects/stylus/core/InkSearch;JLcom/visionobjects/stylus/core/InkSearchListener;)V
.end method

.method public static final native InkTag_mapped(JLcom/visionobjects/stylus/core/InkTag;JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/ListInkItem;)J
.end method

.method public static final native InkTag_name(JLcom/visionobjects/stylus/core/InkTag;)I
.end method

.method public static final native InkTag_nativeEquals(JLcom/visionobjects/stylus/core/InkTag;JLcom/visionobjects/stylus/core/InkTag;)Z
.end method

.method public static final native InkTag_range(JLcom/visionobjects/stylus/core/InkTag;)J
.end method

.method public static final native InkTag_setName(JLcom/visionobjects/stylus/core/InkTag;I)V
.end method

.method public static final native InkTag_setRange(JLcom/visionobjects/stylus/core/InkTag;JLcom/visionobjects/stylus/core/InkRange;)V
.end method

.method public static final native InkTag_simplified(JLcom/visionobjects/stylus/core/InkTag;JLcom/visionobjects/stylus/core/ListInkItem;JLcom/visionobjects/stylus/core/ListInt;)J
.end method

.method public static final native InkTag_timeShifted(JLcom/visionobjects/stylus/core/InkTag;J)J
.end method

.method public static final native InputMethodConfig_addLexicon(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/ListString;)V
.end method

.method public static final native InputMethodConfig_addLexiconEntry(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V
.end method

.method public static final native InputMethodConfig_addResource(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V
.end method

.method public static final native InputMethodConfig_addResourceDir(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V
.end method

.method public static final native InputMethodConfig_autoIso(JLcom/visionobjects/stylus/core/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_candidateListSize(JLcom/visionobjects/stylus/core/InputMethodConfig;I)J
.end method

.method public static final native InputMethodConfig_certificate(JLcom/visionobjects/stylus/core/InputMethodConfig;)J
.end method

.method public static final native InputMethodConfig_coordinateResolution(JLcom/visionobjects/stylus/core/InputMethodConfig;)F
.end method

.method public static final native InputMethodConfig_freezeTimeout(JLcom/visionobjects/stylus/core/InputMethodConfig;)I
.end method

.method public static final native InputMethodConfig_isPrefixRecognition(JLcom/visionobjects/stylus/core/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_locale(JLcom/visionobjects/stylus/core/InputMethodConfig;)[B
.end method

.method public static final native InputMethodConfig_localeTextDirection(JLcom/visionobjects/stylus/core/InputMethodConfig;)I
.end method

.method public static final native InputMethodConfig_missingResources(JLcom/visionobjects/stylus/core/InputMethodConfig;)J
.end method

.method public static final native InputMethodConfig_nativeEquals(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_notEquals(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_productID(JLcom/visionobjects/stylus/core/InputMethodConfig;)I
.end method

.method public static final native InputMethodConfig_resources(JLcom/visionobjects/stylus/core/InputMethodConfig;)J
.end method

.method public static final native InputMethodConfig_searchResource(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)[B
.end method

.method public static final native InputMethodConfig_setAutoIso(JLcom/visionobjects/stylus/core/InputMethodConfig;Z)V
.end method

.method public static final native InputMethodConfig_setCandidateListSize(JLcom/visionobjects/stylus/core/InputMethodConfig;IJ)V
.end method

.method public static final native InputMethodConfig_setCertificate(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V
.end method

.method public static final native InputMethodConfig_setCoordinateResolution(JLcom/visionobjects/stylus/core/InputMethodConfig;F)V
.end method

.method public static final native InputMethodConfig_setFreezeTimeout(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V
.end method

.method public static final native InputMethodConfig_setLocale(JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V
.end method

.method public static final native InputMethodConfig_setPrefixRecognition(JLcom/visionobjects/stylus/core/InputMethodConfig;Z)V
.end method

.method public static final native InputMethodConfig_setProductID(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V
.end method

.method public static final native InputMethodConfig_setSpeedQualityCompromise(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V
.end method

.method public static final native InputMethodConfig_setStrictAlienCharacters(JLcom/visionobjects/stylus/core/InputMethodConfig;Z)V
.end method

.method public static final native InputMethodConfig_setUnfreezeWordCount(JLcom/visionobjects/stylus/core/InputMethodConfig;I)V
.end method

.method public static final native InputMethodConfig_setUnfreezeWordsAccrossLines(JLcom/visionobjects/stylus/core/InputMethodConfig;Z)V
.end method

.method public static final native InputMethodConfig_speedQualityCompromise(JLcom/visionobjects/stylus/core/InputMethodConfig;)I
.end method

.method public static final native InputMethodConfig_strictAlienCharacters(JLcom/visionobjects/stylus/core/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_supplementaryLexicon(JLcom/visionobjects/stylus/core/InputMethodConfig;)J
.end method

.method public static final native InputMethodConfig_unfreezeWordCount(JLcom/visionobjects/stylus/core/InputMethodConfig;)I
.end method

.method public static final native InputMethodConfig_unfreezeWordsAccrossLines(JLcom/visionobjects/stylus/core/InputMethodConfig;)Z
.end method

.method public static final native InputMethodConfig_updateLexicon(JLcom/visionobjects/stylus/core/InputMethodConfig;JLcom/visionobjects/stylus/core/ListString;)V
.end method

.method public static final native InputMethodListener_backspaceGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;)V
.end method

.method public static final native InputMethodListener_configured(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;I)V
.end method

.method public static final native InputMethodListener_eraseGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkRange;)V
.end method

.method public static final native InputMethodListener_flowSync(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;I)V
.end method

.method public static final native InputMethodListener_insertGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkLocation;)V
.end method

.method public static final native InputMethodListener_joinGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkLocation;)V
.end method

.method public static final native InputMethodListener_overwriteGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkRange;)V
.end method

.method public static final native InputMethodListener_progress(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;II)V
.end method

.method public static final native InputMethodListener_returnGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkLocation;)V
.end method

.method public static final native InputMethodListener_selectionGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkRange;)V
.end method

.method public static final native InputMethodListener_singleTapGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkLocation;)V
.end method

.method public static final native InputMethodListener_spaceGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;)V
.end method

.method public static final native InputMethodListener_underlineGesture(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkRange;)V
.end method

.method public static final native InputMethodListener_update(JLcom/visionobjects/stylus/core/InputMethodListener;JLcom/visionobjects/stylus/core/InputMethod;)V
.end method

.method public static final native InputMethod_addStroke(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkItem;)V
.end method

.method public static final native InputMethod_addStrokes(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/ListInkItem;)V
.end method

.method public static final native InputMethod_config(JLcom/visionobjects/stylus/core/InputMethod;)J
.end method

.method public static final native InputMethod_contains(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/Point;)Z
.end method

.method public static final native InputMethod_defaultBackspaceGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InputMethod_defaultEraseGesture__SWIG_0(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;Z)J
.end method

.method public static final native InputMethod_defaultEraseGesture__SWIG_1(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InputMethod_defaultInsertGesture__SWIG_0(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;Z)J
.end method

.method public static final native InputMethod_defaultInsertGesture__SWIG_1(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;)J
.end method

.method public static final native InputMethod_defaultJoinGesture__SWIG_0(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;F)J
.end method

.method public static final native InputMethod_defaultJoinGesture__SWIG_1(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;)J
.end method

.method public static final native InputMethod_defaultOverwriteGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InputMethod_defaultReturnGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;)J
.end method

.method public static final native InputMethod_defaultSelectionGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InputMethod_defaultSingleTapGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;)J
.end method

.method public static final native InputMethod_defaultSpaceGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native InputMethod_defaultUnderlineGesture(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native InputMethod_disableGestures(JLcom/visionobjects/stylus/core/InputMethod;I)V
.end method

.method public static final native InputMethod_enableGestures(JLcom/visionobjects/stylus/core/InputMethod;I)V
.end method

.method public static final native InputMethod_errorCode(JLcom/visionobjects/stylus/core/InputMethod;)I
.end method

.method public static final native InputMethod_errorCodeToString(I)[B
.end method

.method public static final native InputMethod_errorString(JLcom/visionobjects/stylus/core/InputMethod;)[B
.end method

.method public static final native InputMethod_failed(JLcom/visionobjects/stylus/core/InputMethod;)Z
.end method

.method public static final native InputMethod_field(JLcom/visionobjects/stylus/core/InputMethod;)J
.end method

.method public static final native InputMethod_gestureName(I)[B
.end method

.method public static final native InputMethod_gestureSet(JLcom/visionobjects/stylus/core/InputMethod;)I
.end method

.method public static final native InputMethod_gestureStrokes(JLcom/visionobjects/stylus/core/InputMethod;)J
.end method

.method public static final native InputMethod_gestureType(JLcom/visionobjects/stylus/core/InputMethod;)I
.end method

.method public static final native InputMethod_gestureTypeName(I)[B
.end method

.method public static final native InputMethod_name(JLcom/visionobjects/stylus/core/InputMethod;)[B
.end method

.method public static final native InputMethod_penAbort(JLcom/visionobjects/stylus/core/InputMethod;)V
.end method

.method public static final native InputMethod_penDown(JLcom/visionobjects/stylus/core/InputMethod;)V
.end method

.method public static final native InputMethod_penMove(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/Point;)V
.end method

.method public static final native InputMethod_penUp(JLcom/visionobjects/stylus/core/InputMethod;)V
.end method

.method public static final native InputMethod_penUpWithUserParams(JLcom/visionobjects/stylus/core/InputMethod;Ljava/lang/Object;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)V
.end method

.method public static final native InputMethod_setConfig(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InputMethodConfig;)V
.end method

.method public static final native InputMethod_setField(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InkField;)V
.end method

.method public static final native InputMethod_setFlowMarker(JLcom/visionobjects/stylus/core/InputMethod;I)V
.end method

.method public static final native InputMethod_setListener(JLcom/visionobjects/stylus/core/InputMethod;JLcom/visionobjects/stylus/core/InputMethodListener;)V
.end method

.method public static final native InputMethod_waitIdle(JLcom/visionobjects/stylus/core/InputMethod;)V
.end method

.method public static final native InputMethod_waitReco(JLcom/visionobjects/stylus/core/InputMethod;)V
.end method

.method public static final native IntegerRange_begin(JLcom/visionobjects/stylus/core/IntegerRange;)I
.end method

.method public static final native IntegerRange_contains__SWIG_0(JLcom/visionobjects/stylus/core/IntegerRange;I)Z
.end method

.method public static final native IntegerRange_contains__SWIG_1(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/IntegerRange;)Z
.end method

.method public static final native IntegerRange_end(JLcom/visionobjects/stylus/core/IntegerRange;)I
.end method

.method public static final native IntegerRange_hashCode(JLcom/visionobjects/stylus/core/IntegerRange;)I
.end method

.method public static final native IntegerRange_intersectedWith(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/ListIntegerRange;)J
.end method

.method public static final native IntegerRange_intersects(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/IntegerRange;)Z
.end method

.method public static final native IntegerRange_isEmpty(JLcom/visionobjects/stylus/core/IntegerRange;)Z
.end method

.method public static final native IntegerRange_length(JLcom/visionobjects/stylus/core/IntegerRange;)I
.end method

.method public static final native IntegerRange_nativeEquals(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/IntegerRange;)Z
.end method

.method public static final native IntegerRange_notEquals(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/IntegerRange;)Z
.end method

.method public static final native IntegerRange_substractedFrom(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/ListIntegerRange;)J
.end method

.method public static final native IntegerRange_unitedTo(JLcom/visionobjects/stylus/core/IntegerRange;JLcom/visionobjects/stylus/core/ListIntegerRange;)J
.end method

.method public static final native IsolatedInputMethod_SWIGUpcast(J)J
.end method

.method public static final native ItemRange_append__SWIG_0(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/IntegerRange;)V
.end method

.method public static final native ItemRange_append__SWIG_1(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ListIntegerRange;)V
.end method

.method public static final native ItemRange_boundingRect(JLcom/visionobjects/stylus/core/ItemRange;)J
.end method

.method public static final native ItemRange_contains__SWIG_0(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/InkLocation;)Z
.end method

.method public static final native ItemRange_contains__SWIG_1(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)Z
.end method

.method public static final native ItemRange_extractPaths(JLcom/visionobjects/stylus/core/ItemRange;)J
.end method

.method public static final native ItemRange_hashCode(JLcom/visionobjects/stylus/core/ItemRange;)I
.end method

.method public static final native ItemRange_intersected(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)J
.end method

.method public static final native ItemRange_intersects(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)Z
.end method

.method public static final native ItemRange_is(JLcom/visionobjects/stylus/core/ItemRange;I)Z
.end method

.method public static final native ItemRange_isEmpty(JLcom/visionobjects/stylus/core/ItemRange;)Z
.end method

.method public static final native ItemRange_isolatedForwardLigatureRemoved(JLcom/visionobjects/stylus/core/ItemRange;)J
.end method

.method public static final native ItemRange_item(JLcom/visionobjects/stylus/core/ItemRange;)J
.end method

.method public static final native ItemRange_length(JLcom/visionobjects/stylus/core/ItemRange;)I
.end method

.method public static final native ItemRange_mapped(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/ListInkItem;)J
.end method

.method public static final native ItemRange_nativeEquals(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)Z
.end method

.method public static final native ItemRange_notEquals(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)Z
.end method

.method public static final native ItemRange_rangeAt(JLcom/visionobjects/stylus/core/ItemRange;I)J
.end method

.method public static final native ItemRange_rangeCount(JLcom/visionobjects/stylus/core/ItemRange;)I
.end method

.method public static final native ItemRange_ranges(JLcom/visionobjects/stylus/core/ItemRange;)J
.end method

.method public static final native ItemRange_setItem(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/InkItem;)V
.end method

.method public static final native ItemRange_simplified(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ListInkItem;JLcom/visionobjects/stylus/core/ListInt;)J
.end method

.method public static final native ItemRange_split(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)V
.end method

.method public static final native ItemRange_substracted(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)J
.end method

.method public static final native ItemRange_timeShifted(JLcom/visionobjects/stylus/core/ItemRange;J)J
.end method

.method public static final native ItemRange_united(JLcom/visionobjects/stylus/core/ItemRange;JLcom/visionobjects/stylus/core/ItemRange;)J
.end method

.method public static final native ItfReader_comment__SWIG_0(JLcom/visionobjects/stylus/core/ItfReader;[B)[B
.end method

.method public static final native ItfReader_comment__SWIG_1(JLcom/visionobjects/stylus/core/ItfReader;)[B
.end method

.method public static final native ItfReader_config__SWIG_0(JLcom/visionobjects/stylus/core/ItfReader;[B)J
.end method

.method public static final native ItfReader_config__SWIG_1(JLcom/visionobjects/stylus/core/ItfReader;)J
.end method

.method public static final native ItfReader_errorCode(JLcom/visionobjects/stylus/core/ItfReader;)I
.end method

.method public static final native ItfReader_errorCodeToString(I)[B
.end method

.method public static final native ItfReader_errorLine(JLcom/visionobjects/stylus/core/ItfReader;)I
.end method

.method public static final native ItfReader_errorString(JLcom/visionobjects/stylus/core/ItfReader;)[B
.end method

.method public static final native ItfReader_failed(JLcom/visionobjects/stylus/core/ItfReader;)Z
.end method

.method public static final native ItfReader_field__SWIG_0(JLcom/visionobjects/stylus/core/ItfReader;[B)J
.end method

.method public static final native ItfReader_field__SWIG_1(JLcom/visionobjects/stylus/core/ItfReader;)J
.end method

.method public static final native ItfReader_fields(JLcom/visionobjects/stylus/core/ItfReader;)J
.end method

.method public static final native ItfReader_strokes(JLcom/visionobjects/stylus/core/ItfReader;)J
.end method

.method public static final native ItfWriter_addStroke(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InkItem;)V
.end method

.method public static final native ItfWriter_addStrokes(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/ListInkItem;)V
.end method

.method public static final native ItfWriter_errorCode(JLcom/visionobjects/stylus/core/ItfWriter;)I
.end method

.method public static final native ItfWriter_errorCodeToString(I)[B
.end method

.method public static final native ItfWriter_errorLine(JLcom/visionobjects/stylus/core/ItfWriter;)I
.end method

.method public static final native ItfWriter_errorString(JLcom/visionobjects/stylus/core/ItfWriter;)[B
.end method

.method public static final native ItfWriter_failed(JLcom/visionobjects/stylus/core/ItfWriter;)Z
.end method

.method public static final native ItfWriter_setComment__SWIG_0(JLcom/visionobjects/stylus/core/ItfWriter;[B[B)V
.end method

.method public static final native ItfWriter_setComment__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;[B)V
.end method

.method public static final native ItfWriter_setConfig__SWIG_0(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InputMethodConfig;[B)V
.end method

.method public static final native ItfWriter_setConfig__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InputMethodConfig;)V
.end method

.method public static final native ItfWriter_setField__SWIG_0(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InkField;[B)V
.end method

.method public static final native ItfWriter_setField__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;JLcom/visionobjects/stylus/core/InkField;)V
.end method

.method public static final native ItfWriter_write(JLcom/visionobjects/stylus/core/ItfWriter;[B)V
.end method

.method public static final native ListArchive_native_add(JLcom/visionobjects/stylus/core/ListArchive;JLcom/visionobjects/stylus/core/Archive;)V
.end method

.method public static final native ListArchive_native_at(JLcom/visionobjects/stylus/core/ListArchive;I)J
.end method

.method public static final native ListArchive_native_size(JLcom/visionobjects/stylus/core/ListArchive;)I
.end method

.method public static final native ListCandidate_native_add(JLcom/visionobjects/stylus/core/ListCandidate;JLcom/visionobjects/stylus/core/Candidate;)V
.end method

.method public static final native ListCandidate_native_at(JLcom/visionobjects/stylus/core/ListCandidate;I)J
.end method

.method public static final native ListCandidate_native_size(JLcom/visionobjects/stylus/core/ListCandidate;)I
.end method

.method public static final native ListFloat_native_add(JLcom/visionobjects/stylus/core/ListFloat;F)V
.end method

.method public static final native ListFloat_native_at(JLcom/visionobjects/stylus/core/ListFloat;I)F
.end method

.method public static final native ListFloat_native_size(JLcom/visionobjects/stylus/core/ListFloat;)I
.end method

.method public static final native ListInkField_native_add(JLcom/visionobjects/stylus/core/ListInkField;JLcom/visionobjects/stylus/core/InkField;)V
.end method

.method public static final native ListInkField_native_at(JLcom/visionobjects/stylus/core/ListInkField;I)J
.end method

.method public static final native ListInkField_native_size(JLcom/visionobjects/stylus/core/ListInkField;)I
.end method

.method public static final native ListInkItem_native_add(JLcom/visionobjects/stylus/core/ListInkItem;JLcom/visionobjects/stylus/core/InkItem;)V
.end method

.method public static final native ListInkItem_native_at(JLcom/visionobjects/stylus/core/ListInkItem;I)J
.end method

.method public static final native ListInkItem_native_size(JLcom/visionobjects/stylus/core/ListInkItem;)I
.end method

.method public static final native ListInkLocation_native_add(JLcom/visionobjects/stylus/core/ListInkLocation;JLcom/visionobjects/stylus/core/InkLocation;)V
.end method

.method public static final native ListInkLocation_native_at(JLcom/visionobjects/stylus/core/ListInkLocation;I)J
.end method

.method public static final native ListInkLocation_native_size(JLcom/visionobjects/stylus/core/ListInkLocation;)I
.end method

.method public static final native ListInkRange_native_add(JLcom/visionobjects/stylus/core/ListInkRange;JLcom/visionobjects/stylus/core/InkRange;)V
.end method

.method public static final native ListInkRange_native_at(JLcom/visionobjects/stylus/core/ListInkRange;I)J
.end method

.method public static final native ListInkRange_native_size(JLcom/visionobjects/stylus/core/ListInkRange;)I
.end method

.method public static final native ListInkTag_native_add(JLcom/visionobjects/stylus/core/ListInkTag;JLcom/visionobjects/stylus/core/InkTag;)V
.end method

.method public static final native ListInkTag_native_at(JLcom/visionobjects/stylus/core/ListInkTag;I)J
.end method

.method public static final native ListInkTag_native_size(JLcom/visionobjects/stylus/core/ListInkTag;)I
.end method

.method public static final native ListInt_native_add(JLcom/visionobjects/stylus/core/ListInt;I)V
.end method

.method public static final native ListInt_native_at(JLcom/visionobjects/stylus/core/ListInt;I)I
.end method

.method public static final native ListInt_native_size(JLcom/visionobjects/stylus/core/ListInt;)I
.end method

.method public static final native ListIntegerRange_native_add(JLcom/visionobjects/stylus/core/ListIntegerRange;JLcom/visionobjects/stylus/core/IntegerRange;)V
.end method

.method public static final native ListIntegerRange_native_at(JLcom/visionobjects/stylus/core/ListIntegerRange;I)J
.end method

.method public static final native ListIntegerRange_native_size(JLcom/visionobjects/stylus/core/ListIntegerRange;)I
.end method

.method public static final native ListItemRange_native_add(JLcom/visionobjects/stylus/core/ListItemRange;JLcom/visionobjects/stylus/core/ItemRange;)V
.end method

.method public static final native ListItemRange_native_at(JLcom/visionobjects/stylus/core/ListItemRange;I)J
.end method

.method public static final native ListItemRange_native_size(JLcom/visionobjects/stylus/core/ListItemRange;)I
.end method

.method public static final native ListPath_native_add(JLcom/visionobjects/stylus/core/ListPath;JLcom/visionobjects/stylus/core/Path;)V
.end method

.method public static final native ListPath_native_at(JLcom/visionobjects/stylus/core/ListPath;I)J
.end method

.method public static final native ListPath_native_size(JLcom/visionobjects/stylus/core/ListPath;)I
.end method

.method public static final native ListPoint_native_add(JLcom/visionobjects/stylus/core/ListPoint;JLcom/visionobjects/stylus/core/Point;)V
.end method

.method public static final native ListPoint_native_at(JLcom/visionobjects/stylus/core/ListPoint;I)J
.end method

.method public static final native ListPoint_native_size(JLcom/visionobjects/stylus/core/ListPoint;)I
.end method

.method public static final native ListRect_native_add(JLcom/visionobjects/stylus/core/ListRect;JLcom/visionobjects/stylus/core/Rect;)V
.end method

.method public static final native ListRect_native_at(JLcom/visionobjects/stylus/core/ListRect;I)J
.end method

.method public static final native ListRect_native_size(JLcom/visionobjects/stylus/core/ListRect;)I
.end method

.method public static final native ListSearchResult_native_add(JLcom/visionobjects/stylus/core/ListSearchResult;JLcom/visionobjects/stylus/core/SearchResult;)V
.end method

.method public static final native ListSearchResult_native_at(JLcom/visionobjects/stylus/core/ListSearchResult;I)J
.end method

.method public static final native ListSearchResult_native_size(JLcom/visionobjects/stylus/core/ListSearchResult;)I
.end method

.method public static final native ListSegment_native_add(JLcom/visionobjects/stylus/core/ListSegment;JLcom/visionobjects/stylus/core/Segment;)V
.end method

.method public static final native ListSegment_native_at(JLcom/visionobjects/stylus/core/ListSegment;I)J
.end method

.method public static final native ListSegment_native_size(JLcom/visionobjects/stylus/core/ListSegment;)I
.end method

.method public static final native ListString_native_add(JLcom/visionobjects/stylus/core/ListString;[B)V
.end method

.method public static final native ListString_native_at(JLcom/visionobjects/stylus/core/ListString;I)[B
.end method

.method public static final native ListString_native_size(JLcom/visionobjects/stylus/core/ListString;)I
.end method

.method public static final native Log_disableSerialization()V
.end method

.method public static final native Log_disable__SWIG_0(I)V
.end method

.method public static final native Log_disable__SWIG_1()V
.end method

.method public static final native Log_elapsed(JLcom/visionobjects/stylus/core/VoTimeStamp;)J
.end method

.method public static final native Log_enableSerialization([B)V
.end method

.method public static final native Log_enableTimings(Z)V
.end method

.method public static final native Log_enable__SWIG_0(I)V
.end method

.method public static final native Log_enable__SWIG_1()V
.end method

.method public static final native Log_getFilter()I
.end method

.method public static final native Log_getSerializationFilePath()[B
.end method

.method public static final native Log_isTimingsEnabled()Z
.end method

.method public static final native Log_serializationEnabled()Z
.end method

.method public static final native Log_setTimings(Z)V
.end method

.method public static final native Path_addArrowHead(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)V
.end method

.method public static final native Path_addSampledArc__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;FFFFFF)V
.end method

.method public static final native Path_addSampledArc__SWIG_1(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;FFFFFI)V
.end method

.method public static final native Path_addSampledLine__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;F)V
.end method

.method public static final native Path_addSampledLine__SWIG_1(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;I)V
.end method

.method public static final native Path_boundingRect(JLcom/visionobjects/stylus/core/Path;)J
.end method

.method public static final native Path_clear(JLcom/visionobjects/stylus/core/Path;)V
.end method

.method public static final native Path_clipped(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native Path_close(JLcom/visionobjects/stylus/core/Path;)V
.end method

.method public static final native Path_closingLength(JLcom/visionobjects/stylus/core/Path;)F
.end method

.method public static final native Path_convexHull(JLcom/visionobjects/stylus/core/Path;)J
.end method

.method public static final native Path_elementAt(JLcom/visionobjects/stylus/core/Path;I)J
.end method

.method public static final native Path_elementCount(JLcom/visionobjects/stylus/core/Path;)I
.end method

.method public static final native Path_elements(JLcom/visionobjects/stylus/core/Path;II[F[F)V
.end method

.method public static final native Path_getCoarsePolyline(JLcom/visionobjects/stylus/core/Path;FFFI)J
.end method

.method public static final native Path_getFastPolylineOptimal(JLcom/visionobjects/stylus/core/Path;FF)J
.end method

.method public static final native Path_hashCode(JLcom/visionobjects/stylus/core/Path;)I
.end method

.method public static final native Path_intersections(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Path;)J
.end method

.method public static final native Path_intersects(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Rect;)Z
.end method

.method public static final native Path_isClosed(JLcom/visionobjects/stylus/core/Path;)Z
.end method

.method public static final native Path_isEmpty(JLcom/visionobjects/stylus/core/Path;)Z
.end method

.method public static final native Path_lastElement(JLcom/visionobjects/stylus/core/Path;)J
.end method

.method public static final native Path_length(JLcom/visionobjects/stylus/core/Path;)F
.end method

.method public static final native Path_lineTo__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;)V
.end method

.method public static final native Path_lineTo__SWIG_1(JLcom/visionobjects/stylus/core/Path;FF)V
.end method

.method public static final native Path_minDistance(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Path;)F
.end method

.method public static final native Path_nativeEquals(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Path;)Z
.end method

.method public static final native Path_notEquals(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Path;)Z
.end method

.method public static final native Path_startAt__SWIG_0(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;)V
.end method

.method public static final native Path_startAt__SWIG_1(JLcom/visionobjects/stylus/core/Path;FF)V
.end method

.method public static final native Path_stretch(JLcom/visionobjects/stylus/core/Path;F)J
.end method

.method public static final native Path_surrounds(JLcom/visionobjects/stylus/core/Path;JLcom/visionobjects/stylus/core/Point;)Z
.end method

.method public static final native Point_addAffect(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J
.end method

.method public static final native Point_almostEquals__SWIG_0(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;F)Z
.end method

.method public static final native Point_almostEquals__SWIG_1(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)Z
.end method

.method public static final native Point_angle(JLcom/visionobjects/stylus/core/Point;)F
.end method

.method public static final native Point_clear(JLcom/visionobjects/stylus/core/Point;)V
.end method

.method public static final native Point_hashCode(JLcom/visionobjects/stylus/core/Point;)I
.end method

.method public static final native Point_isNull(JLcom/visionobjects/stylus/core/Point;)Z
.end method

.method public static final native Point_middle(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J
.end method

.method public static final native Point_minusAffect(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J
.end method

.method public static final native Point_nativeEquals(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)Z
.end method

.method public static final native Point_norm(JLcom/visionobjects/stylus/core/Point;)F
.end method

.method public static final native Point_notEquals(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)Z
.end method

.method public static final native Point_rotated(JLcom/visionobjects/stylus/core/Point;F)J
.end method

.method public static final native Point_setX(JLcom/visionobjects/stylus/core/Point;F)V
.end method

.method public static final native Point_setY(JLcom/visionobjects/stylus/core/Point;F)V
.end method

.method public static final native Point_x(JLcom/visionobjects/stylus/core/Point;)F
.end method

.method public static final native Point_y(JLcom/visionobjects/stylus/core/Point;)F
.end method

.method public static final native Rect_adjusted(JLcom/visionobjects/stylus/core/Rect;FFFF)J
.end method

.method public static final native Rect_bottom(JLcom/visionobjects/stylus/core/Rect;)F
.end method

.method public static final native Rect_bottomLeft(JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native Rect_bottomRight(JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native Rect_center(JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native Rect_clear(JLcom/visionobjects/stylus/core/Rect;)V
.end method

.method public static final native Rect_contains__SWIG_0(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Point;)Z
.end method

.method public static final native Rect_contains__SWIG_1(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)Z
.end method

.method public static final native Rect_hashCode(JLcom/visionobjects/stylus/core/Rect;)I
.end method

.method public static final native Rect_height(JLcom/visionobjects/stylus/core/Rect;)F
.end method

.method public static final native Rect_intersected(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native Rect_intersects(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)Z
.end method

.method public static final native Rect_isNull(JLcom/visionobjects/stylus/core/Rect;)Z
.end method

.method public static final native Rect_left(JLcom/visionobjects/stylus/core/Rect;)F
.end method

.method public static final native Rect_moveBottom(JLcom/visionobjects/stylus/core/Rect;F)V
.end method

.method public static final native Rect_moveCenter(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Point;)V
.end method

.method public static final native Rect_moveLeft(JLcom/visionobjects/stylus/core/Rect;F)V
.end method

.method public static final native Rect_moveRight(JLcom/visionobjects/stylus/core/Rect;F)V
.end method

.method public static final native Rect_moveTo(JLcom/visionobjects/stylus/core/Rect;FF)V
.end method

.method public static final native Rect_moveTop(JLcom/visionobjects/stylus/core/Rect;F)V
.end method

.method public static final native Rect_nativeEquals(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)Z
.end method

.method public static final native Rect_notEquals(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)Z
.end method

.method public static final native Rect_right(JLcom/visionobjects/stylus/core/Rect;)F
.end method

.method public static final native Rect_setHeight(JLcom/visionobjects/stylus/core/Rect;F)V
.end method

.method public static final native Rect_setWidth(JLcom/visionobjects/stylus/core/Rect;F)V
.end method

.method public static final native Rect_setX(JLcom/visionobjects/stylus/core/Rect;F)V
.end method

.method public static final native Rect_setY(JLcom/visionobjects/stylus/core/Rect;F)V
.end method

.method public static final native Rect_top(JLcom/visionobjects/stylus/core/Rect;)F
.end method

.method public static final native Rect_topLeft(JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native Rect_topRight(JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native Rect_translate(JLcom/visionobjects/stylus/core/Rect;FF)V
.end method

.method public static final native Rect_united(JLcom/visionobjects/stylus/core/Rect;JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native Rect_width(JLcom/visionobjects/stylus/core/Rect;)F
.end method

.method public static final native Rect_x(JLcom/visionobjects/stylus/core/Rect;)F
.end method

.method public static final native Rect_y(JLcom/visionobjects/stylus/core/Rect;)F
.end method

.method public static final native SearchResult_getInputRange(JLcom/visionobjects/stylus/core/SearchResult;)J
.end method

.method public static final native SearchResult_getLabel(JLcom/visionobjects/stylus/core/SearchResult;)[B
.end method

.method public static final native SearchResult_getOccurrence(JLcom/visionobjects/stylus/core/SearchResult;)I
.end method

.method public static final native SearchResult_getScore(JLcom/visionobjects/stylus/core/SearchResult;)F
.end method

.method public static final native SearchResult_nativeEquals(JLcom/visionobjects/stylus/core/SearchResult;JLcom/visionobjects/stylus/core/SearchResult;)Z
.end method

.method public static final native SearchResult_notEquals(JLcom/visionobjects/stylus/core/SearchResult;JLcom/visionobjects/stylus/core/SearchResult;)Z
.end method

.method public static final native SearchResult_setInputRange(JLcom/visionobjects/stylus/core/SearchResult;JLcom/visionobjects/stylus/core/InkRange;)V
.end method

.method public static final native SearchResult_setLabel(JLcom/visionobjects/stylus/core/SearchResult;[B)V
.end method

.method public static final native SearchResult_setOccurrence(JLcom/visionobjects/stylus/core/SearchResult;I)V
.end method

.method public static final native SearchResult_setScore(JLcom/visionobjects/stylus/core/SearchResult;F)V
.end method

.method public static final native Segment_appendAt(JLcom/visionobjects/stylus/core/Segment;IJLcom/visionobjects/stylus/core/Candidate;)V
.end method

.method public static final native Segment_append__SWIG_0(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/ItemRange;)V
.end method

.method public static final native Segment_append__SWIG_1(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkRange;)V
.end method

.method public static final native Segment_append__SWIG_2(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Candidate;)V
.end method

.method public static final native Segment_baseline(JLcom/visionobjects/stylus/core/Segment;)F
.end method

.method public static final native Segment_baselineSkew(JLcom/visionobjects/stylus/core/Segment;)F
.end method

.method public static final native Segment_baselineSkewUndefined_get()F
.end method

.method public static final native Segment_baselineUndefined_get()F
.end method

.method public static final native Segment_beautified(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native Segment_begin(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native Segment_bottomBound(JLcom/visionobjects/stylus/core/Segment;)F
.end method

.method public static final native Segment_candidates(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native Segment_contains(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkLocation;)Z
.end method

.method public static final native Segment_duration(JLcom/visionobjects/stylus/core/Segment;)I
.end method

.method public static final native Segment_end(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native Segment_fontified(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/ListRect;FF)J
.end method

.method public static final native Segment_fromCandidate(JLcom/visionobjects/stylus/core/Candidate;)J
.end method

.method public static final native Segment_fromLabel__SWIG_0([BII)J
.end method

.method public static final native Segment_fromLabel__SWIG_1([BI)J
.end method

.method public static final native Segment_fromLabel__SWIG_2([B)J
.end method

.method public static final native Segment_getUserParams(JLcom/visionobjects/stylus/core/Segment;I)Ljava/lang/Object;
.end method

.method public static final native Segment_grafted(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;I)J
.end method

.method public static final native Segment_hashCode(JLcom/visionobjects/stylus/core/Segment;)I
.end method

.method public static final native Segment_inkRange(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native Segment_is(JLcom/visionobjects/stylus/core/Segment;I)Z
.end method

.method public static final native Segment_isEmpty(JLcom/visionobjects/stylus/core/Segment;)Z
.end method

.method public static final native Segment_isLower(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;)Z
.end method

.method public static final native Segment_isMirrored(JLcom/visionobjects/stylus/core/Segment;)Z
.end method

.method public static final native Segment_items(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native Segment_keepOnlySelectedCandidate(JLcom/visionobjects/stylus/core/Segment;)V
.end method

.method public static final native Segment_leftBound(JLcom/visionobjects/stylus/core/Segment;)F
.end method

.method public static final native Segment_leftToRightBarycenterOrder(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;)Z
.end method

.method public static final native Segment_mapped(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/ListInkItem;)J
.end method

.method public static final native Segment_midlineShift(JLcom/visionobjects/stylus/core/Segment;)F
.end method

.method public static final native Segment_midlineShiftUndefined_get()F
.end method

.method public static final native Segment_mirrored(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native Segment_nativeEquals(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;)Z
.end method

.method public static final native Segment_normalized__SWIG_0(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkRange;Z)J
.end method

.method public static final native Segment_normalized__SWIG_1(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native Segment_normalized__SWIG_2(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native Segment_notEquals(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;)Z
.end method

.method public static final native Segment_promoted(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native Segment_rebased(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/ListInkItem;)J
.end method

.method public static final native Segment_reorder(JLcom/visionobjects/stylus/core/Segment;I)J
.end method

.method public static final native Segment_replaceAt(JLcom/visionobjects/stylus/core/Segment;IJLcom/visionobjects/stylus/core/Candidate;)V
.end method

.method public static final native Segment_rightBound(JLcom/visionobjects/stylus/core/Segment;)F
.end method

.method public static final native Segment_rightToLeftBarycenterOrder(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;)Z
.end method

.method public static final native Segment_segmentsOfType(JLcom/visionobjects/stylus/core/Segment;I)J
.end method

.method public static final native Segment_select(JLcom/visionobjects/stylus/core/Segment;I)Z
.end method

.method public static final native Segment_selectLastCandidate(JLcom/visionobjects/stylus/core/Segment;)Z
.end method

.method public static final native Segment_selectedCandidate(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native Segment_selectedIndex(JLcom/visionobjects/stylus/core/Segment;)I
.end method

.method public static final native Segment_setBaseline(JLcom/visionobjects/stylus/core/Segment;F)V
.end method

.method public static final native Segment_setBaselineSkew(JLcom/visionobjects/stylus/core/Segment;F)V
.end method

.method public static final native Segment_setMidlineShift(JLcom/visionobjects/stylus/core/Segment;F)V
.end method

.method public static final native Segment_simplified(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/ListInkItem;JLcom/visionobjects/stylus/core/ListInt;)J
.end method

.method public static final native Segment_split(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;)V
.end method

.method public static final native Segment_strokeCount(JLcom/visionobjects/stylus/core/Segment;)I
.end method

.method public static final native Segment_timeShifted(JLcom/visionobjects/stylus/core/Segment;J)J
.end method

.method public static final native Segment_timeStamp(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native Segment_timeStampOrder(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/Segment;)Z
.end method

.method public static final native Segment_topBound(JLcom/visionobjects/stylus/core/Segment;)F
.end method

.method public static final native Segment_updateUserParametersListener(JLcom/visionobjects/stylus/core/Segment;JLcom/visionobjects/stylus/core/InkItemUserParamsListener;)J
.end method

.method public static final native StringUtils_graphemes([B)J
.end method

.method public static final native StringUtils_graphemesPositions([B)J
.end method

.method public static final native Transform_applied(JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/Transform;)J
.end method

.method public static final native Transform_getScaleRatio(JLcom/visionobjects/stylus/core/Transform;)F
.end method

.method public static final native Transform_getXScale(JLcom/visionobjects/stylus/core/Transform;)F
.end method

.method public static final native Transform_getXShearing(JLcom/visionobjects/stylus/core/Transform;)F
.end method

.method public static final native Transform_getXTranslation(JLcom/visionobjects/stylus/core/Transform;)F
.end method

.method public static final native Transform_getYScale(JLcom/visionobjects/stylus/core/Transform;)F
.end method

.method public static final native Transform_getYShearing(JLcom/visionobjects/stylus/core/Transform;)F
.end method

.method public static final native Transform_getYTranslation(JLcom/visionobjects/stylus/core/Transform;)F
.end method

.method public static final native Transform_inverted(JLcom/visionobjects/stylus/core/Transform;)J
.end method

.method public static final native Transform_isIdentity(JLcom/visionobjects/stylus/core/Transform;)Z
.end method

.method public static final native Transform_isInvertible(JLcom/visionobjects/stylus/core/Transform;)Z
.end method

.method public static final native Transform_map__SWIG_0(JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/Point;)J
.end method

.method public static final native Transform_map__SWIG_1(JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native Transform_map__SWIG_2(JLcom/visionobjects/stylus/core/Transform;JLcom/visionobjects/stylus/core/Path;)J
.end method

.method public static final native Transform_rotate(JLcom/visionobjects/stylus/core/Transform;F)J
.end method

.method public static final native Transform_scale(JLcom/visionobjects/stylus/core/Transform;FF)J
.end method

.method public static final native Transform_setIdentity(JLcom/visionobjects/stylus/core/Transform;)V
.end method

.method public static final native Transform_shear(JLcom/visionobjects/stylus/core/Transform;FF)J
.end method

.method public static final native Transform_translate(JLcom/visionobjects/stylus/core/Transform;FF)J
.end method

.method public static final native VectorByte_add(JLcom/visionobjects/stylus/core/VectorByte;S)V
.end method

.method public static final native VectorByte_capacity(JLcom/visionobjects/stylus/core/VectorByte;)J
.end method

.method public static final native VectorByte_clear(JLcom/visionobjects/stylus/core/VectorByte;)V
.end method

.method public static final native VectorByte_get(JLcom/visionobjects/stylus/core/VectorByte;I)S
.end method

.method public static final native VectorByte_isEmpty(JLcom/visionobjects/stylus/core/VectorByte;)Z
.end method

.method public static final native VectorByte_reserve(JLcom/visionobjects/stylus/core/VectorByte;J)V
.end method

.method public static final native VectorByte_set(JLcom/visionobjects/stylus/core/VectorByte;IS)V
.end method

.method public static final native VectorByte_size(JLcom/visionobjects/stylus/core/VectorByte;)J
.end method

.method public static final native VectorChar_add(JLcom/visionobjects/stylus/core/VectorChar;C)V
.end method

.method public static final native VectorChar_capacity(JLcom/visionobjects/stylus/core/VectorChar;)J
.end method

.method public static final native VectorChar_clear(JLcom/visionobjects/stylus/core/VectorChar;)V
.end method

.method public static final native VectorChar_get(JLcom/visionobjects/stylus/core/VectorChar;I)C
.end method

.method public static final native VectorChar_isEmpty(JLcom/visionobjects/stylus/core/VectorChar;)Z
.end method

.method public static final native VectorChar_reserve(JLcom/visionobjects/stylus/core/VectorChar;J)V
.end method

.method public static final native VectorChar_set(JLcom/visionobjects/stylus/core/VectorChar;IC)V
.end method

.method public static final native VectorChar_size(JLcom/visionobjects/stylus/core/VectorChar;)J
.end method

.method public static final native VoString_add(JLcom/visionobjects/stylus/core/VoString;[B)[B
.end method

.method public static final native VoString_addAffect(JLcom/visionobjects/stylus/core/VoString;[B)J
.end method

.method public static final native VoString_append(JLcom/visionobjects/stylus/core/VoString;[B)J
.end method

.method public static final native VoString_at(JLcom/visionobjects/stylus/core/VoString;I)J
.end method

.method public static final native VoString_byteCount(JLcom/visionobjects/stylus/core/VoString;)I
.end method

.method public static final native VoString_chop(JLcom/visionobjects/stylus/core/VoString;I)V
.end method

.method public static final native VoString_clear(JLcom/visionobjects/stylus/core/VoString;)V
.end method

.method public static final native VoString_containsOneCharOf(JLcom/visionobjects/stylus/core/VoString;[B)Z
.end method

.method public static final native VoString_contains__SWIG_0(JLcom/visionobjects/stylus/core/VoString;[B)Z
.end method

.method public static final native VoString_contains__SWIG_1(JLcom/visionobjects/stylus/core/VoString;I)Z
.end method

.method public static final native VoString_count(JLcom/visionobjects/stylus/core/VoString;JLcom/visionobjects/stylus/core/Char;)I
.end method

.method public static final native VoString_findBytePos__SWIG_0(JLcom/visionobjects/stylus/core/VoString;[BI)I
.end method

.method public static final native VoString_findBytePos__SWIG_1(JLcom/visionobjects/stylus/core/VoString;[B)I
.end method

.method public static final native VoString_firstChar(JLcom/visionobjects/stylus/core/VoString;)J
.end method

.method public static final native VoString_hashCode(JLcom/visionobjects/stylus/core/VoString;)I
.end method

.method public static final native VoString_isEmpty(JLcom/visionobjects/stylus/core/VoString;)Z
.end method

.method public static final native VoString_isUnicodeChar(JLcom/visionobjects/stylus/core/VoString;J)Z
.end method

.method public static final native VoString_lastChar(JLcom/visionobjects/stylus/core/VoString;)J
.end method

.method public static final native VoString_length(JLcom/visionobjects/stylus/core/VoString;)I
.end method

.method public static final native VoString_mid__SWIG_0(JLcom/visionobjects/stylus/core/VoString;II)[B
.end method

.method public static final native VoString_mid__SWIG_1(JLcom/visionobjects/stylus/core/VoString;I)[B
.end method

.method public static final native VoString_nativeEquals(JLcom/visionobjects/stylus/core/VoString;[B)Z
.end method

.method public static final native VoString_notEquals(JLcom/visionobjects/stylus/core/VoString;[B)Z
.end method

.method public static final native VoString_number__SWIG_0(DCI)[B
.end method

.method public static final native VoString_number__SWIG_1(DC)[B
.end method

.method public static final native VoString_number__SWIG_2(D)[B
.end method

.method public static final native VoString_remapCircledCharacters(JLcom/visionobjects/stylus/core/VoString;)V
.end method

.method public static final native VoString_remove__SWIG_0(JLcom/visionobjects/stylus/core/VoString;[B)J
.end method

.method public static final native VoString_remove__SWIG_1(JLcom/visionobjects/stylus/core/VoString;II)J
.end method

.method public static final native VoString_repeated(JLcom/visionobjects/stylus/core/VoString;I)[B
.end method

.method public static final native VoString_replace__SWIG_0(JLcom/visionobjects/stylus/core/VoString;[B[B)J
.end method

.method public static final native VoString_replace__SWIG_1(JLcom/visionobjects/stylus/core/VoString;II[B)J
.end method

.method public static final native VoString_split(JLcom/visionobjects/stylus/core/VoString;C)J
.end method

.method public static final native VoString_toDouble(JLcom/visionobjects/stylus/core/VoString;)D
.end method

.method public static final native VoString_toInt(JLcom/visionobjects/stylus/core/VoString;)I
.end method

.method public static final native VoString_toLower(JLcom/visionobjects/stylus/core/VoString;)[B
.end method

.method public static final native VoString_toUpper(JLcom/visionobjects/stylus/core/VoString;)[B
.end method

.method public static final native VoTimeStamp_elapsed__SWIG_0(JLcom/visionobjects/stylus/core/VoTimeStamp;I)J
.end method

.method public static final native VoTimeStamp_elapsed__SWIG_1(JLcom/visionobjects/stylus/core/VoTimeStamp;)J
.end method

.method public static final native VoTimeStamp_hashCode(JLcom/visionobjects/stylus/core/VoTimeStamp;)I
.end method

.method public static final native VoTimeStamp_isGreater(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_isGreaterOrEqual(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_isLower(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_isLowerOrEqual(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_milliseconds(JLcom/visionobjects/stylus/core/VoTimeStamp;)J
.end method

.method public static final native VoTimeStamp_millisecondsTo(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)J
.end method

.method public static final native VoTimeStamp_nativeEquals(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_notEquals(JLcom/visionobjects/stylus/core/VoTimeStamp;JLcom/visionobjects/stylus/core/VoTimeStamp;)Z
.end method

.method public static final native VoTimeStamp_shifted(JLcom/visionobjects/stylus/core/VoTimeStamp;J)J
.end method

.method public static final native add(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J
.end method

.method public static final native db__SWIG_0(JLcom/visionobjects/stylus/core/Point;)Ljava/lang/String;
.end method

.method public static final native db__SWIG_1(JLcom/visionobjects/stylus/core/Rect;)Ljava/lang/String;
.end method

.method public static final native db__SWIG_2(JLcom/visionobjects/stylus/core/Segment;)Ljava/lang/String;
.end method

.method public static final native delete_Archive(J)V
.end method

.method public static final native delete_CalcInputMethod(J)V
.end method

.method public static final native delete_Candidate(J)V
.end method

.method public static final native delete_Char(J)V
.end method

.method public static final native delete_CursiveInputMethod(J)V
.end method

.method public static final native delete_Formatter(J)V
.end method

.method public static final native delete_InkDebug(J)V
.end method

.method public static final native delete_InkField(J)V
.end method

.method public static final native delete_InkItem(J)V
.end method

.method public static final native delete_InkItemUserParamsListener(J)V
.end method

.method public static final native delete_InkLayout(J)V
.end method

.method public static final native delete_InkLocation(J)V
.end method

.method public static final native delete_InkRange(J)V
.end method

.method public static final native delete_InkSearch(J)V
.end method

.method public static final native delete_InkSearchListener(J)V
.end method

.method public static final native delete_InkTag(J)V
.end method

.method public static final native delete_InputMethod(J)V
.end method

.method public static final native delete_InputMethodConfig(J)V
.end method

.method public static final native delete_InputMethodListener(J)V
.end method

.method public static final native delete_IntegerRange(J)V
.end method

.method public static final native delete_IsolatedInputMethod(J)V
.end method

.method public static final native delete_ItemRange(J)V
.end method

.method public static final native delete_ItfReader(J)V
.end method

.method public static final native delete_ItfWriter(J)V
.end method

.method public static final native delete_ListArchive(J)V
.end method

.method public static final native delete_ListCandidate(J)V
.end method

.method public static final native delete_ListFloat(J)V
.end method

.method public static final native delete_ListInkField(J)V
.end method

.method public static final native delete_ListInkItem(J)V
.end method

.method public static final native delete_ListInkLocation(J)V
.end method

.method public static final native delete_ListInkRange(J)V
.end method

.method public static final native delete_ListInkTag(J)V
.end method

.method public static final native delete_ListInt(J)V
.end method

.method public static final native delete_ListIntegerRange(J)V
.end method

.method public static final native delete_ListItemRange(J)V
.end method

.method public static final native delete_ListPath(J)V
.end method

.method public static final native delete_ListPoint(J)V
.end method

.method public static final native delete_ListRect(J)V
.end method

.method public static final native delete_ListSearchResult(J)V
.end method

.method public static final native delete_ListSegment(J)V
.end method

.method public static final native delete_ListString(J)V
.end method

.method public static final native delete_Log(J)V
.end method

.method public static final native delete_Path(J)V
.end method

.method public static final native delete_Point(J)V
.end method

.method public static final native delete_Rect(J)V
.end method

.method public static final native delete_SearchResult(J)V
.end method

.method public static final native delete_Segment(J)V
.end method

.method public static final native delete_StringUtils(J)V
.end method

.method public static final native delete_Transform(J)V
.end method

.method public static final native delete_VectorByte(J)V
.end method

.method public static final native delete_VectorChar(J)V
.end method

.method public static final native delete_VoString(J)V
.end method

.method public static final native delete_VoTimeStamp(J)V
.end method

.method public static final native logFmt(ILjava/lang/String;)V
.end method

.method public static final native minus(JLcom/visionobjects/stylus/core/Point;JLcom/visionobjects/stylus/core/Point;)J
.end method

.method public static final native new_Archive__SWIG_0(Z[B)J
.end method

.method public static final native new_Archive__SWIG_1(Z[BI)J
.end method

.method public static final native new_Archive__SWIG_2(JLcom/visionobjects/stylus/core/Archive;)J
.end method

.method public static final native new_Archive_bytes([B)J
.end method

.method public static final native new_Archive_bytes_version([BJ)J
.end method

.method public static final native new_Archive_empty()J
.end method

.method public static final native new_Archive_version(J)J
.end method

.method public static final native new_CalcInputMethod__SWIG_0()J
.end method

.method public static final native new_CalcInputMethod__SWIG_1([B)J
.end method

.method public static final native new_CalcInputMethod__SWIG_2(JLcom/visionobjects/stylus/core/CalcInputMethod;)J
.end method

.method public static final native new_Candidate__SWIG_0()J
.end method

.method public static final native new_Candidate__SWIG_1(JLcom/visionobjects/stylus/core/Candidate;)J
.end method

.method public static final native new_Char__SWIG_0()J
.end method

.method public static final native new_Char__SWIG_1(Ljava/lang/String;)J
.end method

.method public static final native new_Char__SWIG_2(C)J
.end method

.method public static final native new_Char__SWIG_3(S)J
.end method

.method public static final native new_Char__SWIG_4(I)J
.end method

.method public static final native new_Char__SWIG_5(J)J
.end method

.method public static final native new_Char__SWIG_6(JLcom/visionobjects/stylus/core/Char;)J
.end method

.method public static final native new_CursiveInputMethod__SWIG_0()J
.end method

.method public static final native new_CursiveInputMethod__SWIG_1([B)J
.end method

.method public static final native new_CursiveInputMethod__SWIG_2(JLcom/visionobjects/stylus/core/CursiveInputMethod;)J
.end method

.method public static final native new_Formatter__SWIG_0()J
.end method

.method public static final native new_Formatter__SWIG_1(JLcom/visionobjects/stylus/core/Formatter;)J
.end method

.method public static final native new_InkDebug__SWIG_0(I)J
.end method

.method public static final native new_InkDebug__SWIG_1(JLcom/visionobjects/stylus/core/InkDebug;)J
.end method

.method public static final native new_InkField__SWIG_0()J
.end method

.method public static final native new_InkField__SWIG_1(JLcom/visionobjects/stylus/core/InkField;)J
.end method

.method public static final native new_InkItemUserParamsListener()J
.end method

.method public static final native new_InkItem__SWIG_0()J
.end method

.method public static final native new_InkItem__SWIG_1(JLcom/visionobjects/stylus/core/InkItem;)J
.end method

.method public static final native new_InkLayout__SWIG_0()J
.end method

.method public static final native new_InkLayout__SWIG_1(JLcom/visionobjects/stylus/core/InkLayout;)J
.end method

.method public static final native new_InkLocation__SWIG_0()J
.end method

.method public static final native new_InkLocation__SWIG_1(JLcom/visionobjects/stylus/core/InkItem;)J
.end method

.method public static final native new_InkLocation__SWIG_2(JLcom/visionobjects/stylus/core/InkLocation;)J
.end method

.method public static final native new_InkRange__SWIG_0()J
.end method

.method public static final native new_InkRange__SWIG_1(JLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native new_InkRange__SWIG_2(JLcom/visionobjects/stylus/core/InkItem;)J
.end method

.method public static final native new_InkRange__SWIG_3(JLcom/visionobjects/stylus/core/ItemRange;)J
.end method

.method public static final native new_InkRange__SWIG_4(JLcom/visionobjects/stylus/core/ListItemRange;)J
.end method

.method public static final native new_InkSearchListener__SWIG_0()J
.end method

.method public static final native new_InkSearchListener__SWIG_1(JLcom/visionobjects/stylus/core/InkSearchListener;)J
.end method

.method public static final native new_InkSearch__SWIG_0()J
.end method

.method public static final native new_InkSearch__SWIG_1(JLcom/visionobjects/stylus/core/InkSearch;)J
.end method

.method public static final native new_InkTag__SWIG_0()J
.end method

.method public static final native new_InkTag__SWIG_1(IJLcom/visionobjects/stylus/core/InkRange;)J
.end method

.method public static final native new_InkTag__SWIG_2(JLcom/visionobjects/stylus/core/InkTag;)J
.end method

.method public static final native new_InputMethodConfig__SWIG_0()J
.end method

.method public static final native new_InputMethodConfig__SWIG_1(JLcom/visionobjects/stylus/core/InputMethodConfig;)J
.end method

.method public static final native new_InputMethodListener__SWIG_0()J
.end method

.method public static final native new_InputMethodListener__SWIG_1(JLcom/visionobjects/stylus/core/InputMethodListener;)J
.end method

.method public static final native new_InputMethod__SWIG_0()J
.end method

.method public static final native new_InputMethod__SWIG_1([B)J
.end method

.method public static final native new_InputMethod__SWIG_2(JLcom/visionobjects/stylus/core/InputMethod;)J
.end method

.method public static final native new_IntegerRange__SWIG_0()J
.end method

.method public static final native new_IntegerRange__SWIG_1(II)J
.end method

.method public static final native new_IntegerRange__SWIG_2(JLcom/visionobjects/stylus/core/IntegerRange;)J
.end method

.method public static final native new_IsolatedInputMethod__SWIG_0()J
.end method

.method public static final native new_IsolatedInputMethod__SWIG_1([B)J
.end method

.method public static final native new_IsolatedInputMethod__SWIG_2(JLcom/visionobjects/stylus/core/IsolatedInputMethod;)J
.end method

.method public static final native new_ItemRange__SWIG_0()J
.end method

.method public static final native new_ItemRange__SWIG_1(JLcom/visionobjects/stylus/core/ItemRange;)J
.end method

.method public static final native new_ItemRange__SWIG_2(JLcom/visionobjects/stylus/core/InkItem;)J
.end method

.method public static final native new_ItemRange__SWIG_3(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/IntegerRange;)J
.end method

.method public static final native new_ItemRange__SWIG_4(JLcom/visionobjects/stylus/core/InkItem;JLcom/visionobjects/stylus/core/ListIntegerRange;)J
.end method

.method public static final native new_ItfReader__SWIG_0([B)J
.end method

.method public static final native new_ItfReader__SWIG_1(JLcom/visionobjects/stylus/core/ItfReader;)J
.end method

.method public static final native new_ItfWriter__SWIG_0()J
.end method

.method public static final native new_ItfWriter__SWIG_1(JLcom/visionobjects/stylus/core/ItfWriter;)J
.end method

.method public static final native new_ListArchive__SWIG_0()J
.end method

.method public static final native new_ListArchive__SWIG_1(JLcom/visionobjects/stylus/core/ListArchive;)J
.end method

.method public static final native new_ListCandidate__SWIG_0()J
.end method

.method public static final native new_ListCandidate__SWIG_1(JLcom/visionobjects/stylus/core/ListCandidate;)J
.end method

.method public static final native new_ListFloat__SWIG_0()J
.end method

.method public static final native new_ListFloat__SWIG_1(JLcom/visionobjects/stylus/core/ListFloat;)J
.end method

.method public static final native new_ListInkField__SWIG_0()J
.end method

.method public static final native new_ListInkField__SWIG_1(JLcom/visionobjects/stylus/core/ListInkField;)J
.end method

.method public static final native new_ListInkItem__SWIG_0()J
.end method

.method public static final native new_ListInkItem__SWIG_1(JLcom/visionobjects/stylus/core/ListInkItem;)J
.end method

.method public static final native new_ListInkLocation__SWIG_0()J
.end method

.method public static final native new_ListInkLocation__SWIG_1(JLcom/visionobjects/stylus/core/ListInkLocation;)J
.end method

.method public static final native new_ListInkRange__SWIG_0()J
.end method

.method public static final native new_ListInkRange__SWIG_1(JLcom/visionobjects/stylus/core/ListInkRange;)J
.end method

.method public static final native new_ListInkTag__SWIG_0()J
.end method

.method public static final native new_ListInkTag__SWIG_1(JLcom/visionobjects/stylus/core/ListInkTag;)J
.end method

.method public static final native new_ListInt__SWIG_0()J
.end method

.method public static final native new_ListInt__SWIG_1(JLcom/visionobjects/stylus/core/ListInt;)J
.end method

.method public static final native new_ListIntegerRange__SWIG_0()J
.end method

.method public static final native new_ListIntegerRange__SWIG_1(JLcom/visionobjects/stylus/core/ListIntegerRange;)J
.end method

.method public static final native new_ListItemRange__SWIG_0()J
.end method

.method public static final native new_ListItemRange__SWIG_1(JLcom/visionobjects/stylus/core/ListItemRange;)J
.end method

.method public static final native new_ListPath__SWIG_0()J
.end method

.method public static final native new_ListPath__SWIG_1(JLcom/visionobjects/stylus/core/ListPath;)J
.end method

.method public static final native new_ListPoint__SWIG_0()J
.end method

.method public static final native new_ListPoint__SWIG_1(JLcom/visionobjects/stylus/core/ListPoint;)J
.end method

.method public static final native new_ListRect__SWIG_0()J
.end method

.method public static final native new_ListRect__SWIG_1(JLcom/visionobjects/stylus/core/ListRect;)J
.end method

.method public static final native new_ListSearchResult__SWIG_0()J
.end method

.method public static final native new_ListSearchResult__SWIG_1(JLcom/visionobjects/stylus/core/ListSearchResult;)J
.end method

.method public static final native new_ListSegment__SWIG_0()J
.end method

.method public static final native new_ListSegment__SWIG_1(JLcom/visionobjects/stylus/core/ListSegment;)J
.end method

.method public static final native new_ListString__SWIG_0()J
.end method

.method public static final native new_ListString__SWIG_1(JLcom/visionobjects/stylus/core/ListString;)J
.end method

.method public static final native new_Log__SWIG_0(I)J
.end method

.method public static final native new_Log__SWIG_1(JLcom/visionobjects/stylus/core/Log;)J
.end method

.method public static final native new_Path__SWIG_0()J
.end method

.method public static final native new_Path__SWIG_1(JLcom/visionobjects/stylus/core/Path;)J
.end method

.method public static final native new_Point__SWIG_0()J
.end method

.method public static final native new_Point__SWIG_1(FF)J
.end method

.method public static final native new_Point__SWIG_2(JLcom/visionobjects/stylus/core/Point;)J
.end method

.method public static final native new_Rect__SWIG_0()J
.end method

.method public static final native new_Rect__SWIG_1(FFFF)J
.end method

.method public static final native new_Rect__SWIG_2(JLcom/visionobjects/stylus/core/Rect;)J
.end method

.method public static final native new_SearchResult__SWIG_0()J
.end method

.method public static final native new_SearchResult__SWIG_1(JLcom/visionobjects/stylus/core/SearchResult;)J
.end method

.method public static final native new_Segment__SWIG_0()J
.end method

.method public static final native new_Segment__SWIG_1(JLcom/visionobjects/stylus/core/Segment;)J
.end method

.method public static final native new_StringUtils__SWIG_0()J
.end method

.method public static final native new_StringUtils__SWIG_1(JLcom/visionobjects/stylus/core/StringUtils;)J
.end method

.method public static final native new_Transform__SWIG_0()J
.end method

.method public static final native new_Transform__SWIG_1(FFFF)J
.end method

.method public static final native new_Transform__SWIG_2(FFFFFF)J
.end method

.method public static final native new_Transform__SWIG_3(JLcom/visionobjects/stylus/core/Transform;)J
.end method

.method public static final native new_VectorByte__SWIG_0()J
.end method

.method public static final native new_VectorByte__SWIG_1(J)J
.end method

.method public static final native new_VectorByte__SWIG_2(JLcom/visionobjects/stylus/core/VectorByte;)J
.end method

.method public static final native new_VectorChar__SWIG_0()J
.end method

.method public static final native new_VectorChar__SWIG_1(J)J
.end method

.method public static final native new_VectorChar__SWIG_2(JLcom/visionobjects/stylus/core/VectorChar;)J
.end method

.method public static final native new_VoString__SWIG_0()J
.end method

.method public static final native new_VoString__SWIG_1(C)J
.end method

.method public static final native new_VoString__SWIG_2(JLcom/visionobjects/stylus/core/Char;)J
.end method

.method public static final native new_VoString__SWIG_3([B)J
.end method

.method public static final native new_VoTimeStamp__SWIG_0(I)J
.end method

.method public static final native new_VoTimeStamp__SWIG_1()J
.end method

.method public static final native new_VoTimeStamp__SWIG_2(J)J
.end method

.method public static final native new_VoTimeStamp__SWIG_3(JLcom/visionobjects/stylus/core/VoTimeStamp;)J
.end method
