.class public Lcom/android/keyguard/sec/KeyguardProperties;
.super Ljava/lang/Object;
.source "KeyguardProperties.java"


# static fields
.field private static final PRODUCT_NAME:Ljava/lang/String;

.field private static final TPROJECT:Z

.field public static final mBlockRequestFocusForHealthView:Z

.field private static mDisplayPlmnByCsc:Z

.field private static mDisplayPlmnBySalesCode:Z

.field private static mDisplayPlmnBySalesCodeChecked:Z

.field private static mDisplayPlmnNByCscChecked:Z

.field private static mIsAusFeature:Z

.field private static mIsAusFeatureChecked:Z

.field private static mIsBrilliantCutEffectSpecialTypeEnabled:Z

.field private static mIsCMCCFeature:Z

.field private static mIsCMCCFeatureChecked:Z

.field private static mIsCTCFeature:Z

.field private static mIsCTCFeatureChecked:Z

.field private static mIsCUFeature:Z

.field private static mIsCUFeatureChecked:Z

.field private static mIsChinaFeature:Z

.field private static mIsChinaFeatureChecked:Z

.field private static mIsDcmFeature:Z

.field private static mIsDirectCallToEcc:Z

.field private static mIsDirectCallToEccChecked:Z

.field private static mIsDirectCallToEccWithQwerty:Z

.field private static mIsDirectCallToEccWithQwertyChecked:Z

.field private static mIsGermanyFeature:Z

.field private static mIsGermanyFeatureChecked:Z

.field private static mIsGgsmPerformancePatchEnabled:Z

.field private static mIsGgsmTablet:Z

.field private static mIsGgsmTabletEnabledSpass:Z

.field private static mIsHKFeature:Z

.field private static mIsHKFeatureChecked:Z

.field private static mIsJapanFeature:Z

.field private static mIsJapanFeatureChecked:Z

.field private static mIsKeyguardLocalConfigLoaded:Z

.field private static mIsKoreaFeature:Z

.field private static mIsKoreaFeatureChecked:Z

.field private static mIsMagazineCardSupport:Z

.field private static mIsPreImplementationForTest:Z

.field private static mIsRichLockEnabled:Z

.field private static mIsRichLockEnabledChecked:Z

.field private static mIsRippleInkEffectEnabled:Z

.field private static mIsSCafeConfigLoaded:Z

.field private static mIsShowHighLowTemp:Z

.field private static mIsShowNonSecureLockscrenBeforeTimeout:Z

.field private static mIsShowNonSecureLockscrenBeforeTimeoutChecked:Z

.field private static mIsSktModel:Z

.field private static mIsSktModelChecked:Z

.field private static mIsSupportScreenOnWhenClosed:Z

.field private static mIsSupportScreenOnWhenClosedChecked:Z

.field private static mIsTiltEffectEnabled:Z

.field private static mIsToggleSeekBarAndTitle:Z

.field private static mIsUsaFeature:Z

.field private static mIsUsaFeatureChecked:Z

.field private static mIsUseCustomWidget:Z

.field private static mIsUseFavoriteAppWidget:Z

.field private static mIsUsePreviousMusicWidget:Z

.field private static mSCafeCream:Ljava/lang/String;

.field private static mSCafeExtra:Ljava/lang/String;

.field private static mSCafeName:Ljava/lang/String;

.field private static mSCafeShot:Ljava/lang/String;

.field private static mSCafeSize:Ljava/lang/String;

.field private static mSCafeSyrup:Ljava/lang/String;

.field private static mUseJellyBeanGUI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mDisplayPlmnBySalesCode:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mDisplayPlmnBySalesCodeChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mDisplayPlmnByCsc:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mDisplayPlmnNByCscChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeature:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeatureChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeature:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeatureChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeature:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeatureChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeature:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeatureChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeature:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeatureChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUsaFeature:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUsaFeatureChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeature:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeatureChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDcmFeature:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModel:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModelChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCMCCFeature:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCMCCFeatureChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCUFeature:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCUFeatureChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCTCFeature:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCTCFeatureChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSupportScreenOnWhenClosed:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSupportScreenOnWhenClosedChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKeyguardLocalConfigLoaded:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTablet:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTabletEnabledSpass:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsMagazineCardSupport:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmPerformancePatchEnabled:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsPreImplementationForTest:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUsePreviousMusicWidget:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUseFavoriteAppWidget:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRippleInkEffectEnabled:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUseCustomWidget:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsBrilliantCutEffectSpecialTypeEnabled:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsTiltEffectEnabled:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEcc:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccWithQwerty:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccWithQwertyChecked:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mUseJellyBeanGUI:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsToggleSeekBarAndTitle:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowHighLowTemp:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSCafeConfigLoaded:Z

    const-string v1, ""

    sput-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    const-string v1, ""

    sput-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSize:Ljava/lang/String;

    const-string v1, ""

    sput-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeShot:Ljava/lang/String;

    const-string v1, ""

    sput-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSyrup:Ljava/lang/String;

    const-string v1, ""

    sput-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeCream:Ljava/lang/String;

    const-string v1, ""

    sput-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeExtra:Ljava/lang/String;

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeout:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeoutChecked:Z

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hestia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mBlockRequestFocusForHealthView:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabled:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabledChecked:Z

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sput-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->PRODUCT_NAME:Ljava/lang/String;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "tblte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "tbelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "trlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "trhlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "trhplte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "tbhplte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "trelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->PRODUCT_NAME:Ljava/lang/String;

    const-string v2, "tre3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TPROJECT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 16
    .param p0    # Ljava/util/Calendar;
    .param p1    # Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xd05

    const/16 v3, 0xa

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    const-string v2, ""

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "MM-dd-yyyy"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    const-string v12, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v10, v2, :cond_3

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    packed-switch v9, :pswitch_data_0

    :goto_1
    const/4 v2, 0x2

    if-ne v9, v2, :cond_1

    :cond_3
    const-string v15, ""

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_6

    if-eqz v11, :cond_5

    const v2, 0x7f060025

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_3
    const-string v2, "KeyguardProperties"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "regionalDateFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRTLlanguage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returnDateFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_8

    :goto_4
    return-object v15

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    const v2, 0x7f060024

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_6
    if-eqz v11, :cond_7

    const v2, 0x7f060024

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_5
    goto :goto_3

    :cond_7
    const v2, 0x7f060025

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    :cond_8
    invoke-static/range {v15 .. v16}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v15

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasCocktailBar(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isATTFeature()Z
    .locals 3

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isArcMotionEnabled()Z
    .locals 2

    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flte"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "flteskt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fltektt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fltelgt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAusFeature()Z
    .locals 4

    const/4 v3, 0x1

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeatureChecked:Z

    if-nez v2, :cond_2

    const-string v2, "Australia"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TEL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VAU"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HUT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "OPS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "OPP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TLP"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeature:Z

    :cond_1
    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeatureChecked:Z

    :cond_2
    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsAusFeature:Z

    return v2
.end method

.method public static isAutoWipeFeature()Z
    .locals 3

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isBrilliantCutSpecialTypeEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsBrilliantCutEffectSpecialTypeEnabled:Z

    return v0
.end method

.method public static isCMCCFeature()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCMCCFeatureChecked:Z

    if-nez v1, :cond_1

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCMCCFeature:Z

    :cond_0
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCMCCFeatureChecked:Z

    :cond_1
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCMCCFeature:Z

    return v1
.end method

.method public static isCTCFeature()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCTCFeatureChecked:Z

    if-nez v1, :cond_1

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCTCFeature:Z

    :cond_0
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCTCFeatureChecked:Z

    :cond_1
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCTCFeature:Z

    return v1
.end method

.method public static isCUFeature()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCUFeatureChecked:Z

    if-nez v1, :cond_1

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCUFeature:Z

    :cond_0
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCUFeatureChecked:Z

    :cond_1
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsCUFeature:Z

    return v1
.end method

.method public static isChinaFeature()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeatureChecked:Z

    if-nez v1, :cond_2

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeature:Z

    :cond_1
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeatureChecked:Z

    :cond_2
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsChinaFeature:Z

    return v1
.end method

.method public static isDcmFeature()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJapanFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDcmFeature:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDirectCallToEcc()Z
    .locals 2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccChecked:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_DirectCallToEcc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEcc:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEccChecked:Z

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDirectCallToEcc:Z

    return v0
.end method

.method public static isDualLCDDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDualLCDFolderDevice(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isFolderDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableOperatorWallpaper()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_EnableOperatorWallpaper"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEnabledLiveDemoMode(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFolderDevice(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFolderOpened(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    const-string v2, "KeyguardProperties"

    const-string v3, "isFolderOpened: Folder is opened"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "KeyguardProperties"

    const-string v2, "isFolderOpened: Folder is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-nez v1, :cond_1

    const-string v1, "KeyguardProperties"

    const-string v2, "isFolderOpened: HardKeyboard setting is undefined"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isFonblet()Z
    .locals 2

    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "capuccino"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.build.scafe.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGENIFeature()Z
    .locals 2

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TNZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TNG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGermanyFeature()Z
    .locals 4

    const/4 v3, 0x1

    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeatureChecked:Z

    if-nez v2, :cond_2

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Germany"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DBT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeature:Z

    :cond_1
    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeatureChecked:Z

    :cond_2
    sget-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGermanyFeature:Z

    return v2
.end method

.method public static isGgsmPerformancePatchEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmPerformancePatchEnabled:Z

    return v0
.end method

.method public static isGgsmTablet()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTablet:Z

    return v0
.end method

.method public static isGgsmTabletEnabledSpass()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTabletEnabledSpass:Z

    return v0
.end method

.method public static isHKFeature()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeatureChecked:Z

    if-nez v1, :cond_1

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeature:Z

    :cond_0
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeatureChecked:Z

    :cond_1
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsHKFeature:Z

    return v1
.end method

.method public static isIgnoreNationalRoaming()Z
    .locals 3

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PRT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VAU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isNationalRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KeyguardProperties"

    const-string v2, "isIgnoreNationalRoaming() = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v1, "KeyguardProperties"

    const-string v2, "isIgnoreNationalRoaming() = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJapanFeature()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeatureChecked:Z

    if-nez v1, :cond_2

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeature:Z

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsDcmFeature:Z

    :cond_1
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeatureChecked:Z

    :cond_2
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsJapanFeature:Z

    return v1
.end method

.method public static isKoreaFeature()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeatureChecked:Z

    if-nez v1, :cond_2

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeature:Z

    :cond_1
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeatureChecked:Z

    :cond_2
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKoreaFeature:Z

    return v1
.end method

.method public static isKoreaPatentIssue(Landroid/app/PendingIntent;)Z
    .locals 3
    .param p0    # Landroid/app/PendingIntent;

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "com.sec.android.widgetapp.notificationwidget"

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLRAFeature()Z
    .locals 3

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMUMLook2013()Z
    .locals 3

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lt02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMagazineCardSupport()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsMagazineCardSupport:Z

    return v0
.end method

.method private static isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v6, v1

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, v1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isMultiSIMDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isNationalRoaming()Z
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x0

    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public static isOneHandOperationEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, -0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "UnifiedSetting"

    const-string v3, "UnifiedSetting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "interactionarea_switch"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_pattern_enabled"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isPreImplementationForTest()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsPreImplementationForTest:Z

    return v0
.end method

.method public static isPresidentialCMASFeature()Z
    .locals 3

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPreviousLook()Z
    .locals 3

    const-string v1, "americano"

    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRichLockEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabledChecked:Z

    if-ne v1, v4, :cond_1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabled:Z

    goto :goto_0

    :cond_1
    sput-boolean v4, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabledChecked:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.keyguardwallpaperupdator"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-boolean v4, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabled:Z

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabled:Z

    goto :goto_0

    :catch_0
    move-exception v1

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRichLockEnabled:Z

    goto :goto_1
.end method

.method public static isRippleInkEffectEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRippleInkEffectEnabled:Z

    return v0
.end method

.method public static isSIMToastEnabled()Z
    .locals 2

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isShortcutDAWithPendingIntent(Landroid/app/PendingIntent;)Z
    .locals 2
    .param p0    # Landroid/app/PendingIntent;

    const-string v0, "com.sec.android.widgetapp.notificationwidget"

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShortcutResize()Z
    .locals 3

    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "melius"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isShowHighLowTemp()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowHighLowTemp:Z

    return v0
.end method

.method public static isSktModel()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModelChecked:Z

    if-nez v1, :cond_2

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModel:Z

    :cond_1
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModelChecked:Z

    :cond_2
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSktModel:Z

    return v1
.end method

.method public static isSupportScreenOnWhenClosed()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSupportScreenOnWhenClosedChecked:Z

    if-nez v1, :cond_2

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSupportScreenOnWhenClosed:Z

    :cond_1
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSupportScreenOnWhenClosedChecked:Z

    :cond_2
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSupportScreenOnWhenClosed:Z

    return v1
.end method

.method public static isTProject()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TPROJECT:Z

    return v0
.end method

.method public static isTablet()Z
    .locals 1

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static isTiltEffectEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isToggleSeekBarAndTitle()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsToggleSeekBarAndTitle:Z

    return v0
.end method

.method public static isUSAFeature()Z
    .locals 3

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CRI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CSP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "XAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isUSIMPersoFeatureEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isUseCustomWidget()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUseCustomWidget:Z

    return v0
.end method

.method public static isUseJellyBeanGUI()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mUseJellyBeanGUI:Z

    return v0
.end method

.method public static isUsePreviousMusicWidget()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUsePreviousMusicWidget:Z

    return v0
.end method

.method public static isVZWCMASFeature()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_CMASOperator"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "us-vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVZWFeature()Z
    .locals 3

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWidgetNavDisabled()Z
    .locals 2

    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt03ltetmo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadSCafeConfig(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSCafeConfigLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mIsSCafeConfigLoaded:Z

    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    const-string v0, "ro.build.scafe.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSize:Ljava/lang/String;

    const-string v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeShot:Ljava/lang/String;

    const-string v0, "ro.build.scafe.syrup"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSyrup:Ljava/lang/String;

    const-string v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeCream:Ljava/lang/String;

    const-string v0, "ro.build.scafe.extra"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeExtra:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static loadWholeKeyguardLocalConfig(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKeyguardLocalConfigLoaded:Z

    if-nez v3, :cond_0

    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsKeyguardLocalConfigLoaded:Z

    const-string v3, "ro.product.device"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f0a0005

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTablet:Z

    const v3, 0x7f0a0006

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmTabletEnabledSpass:Z

    const v3, 0x7f0a0007

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mUseJellyBeanGUI:Z

    const v3, 0x7f0a0008

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsGgsmPerformancePatchEnabled:Z

    const v3, 0x7f0a0009

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsPreImplementationForTest:Z

    const v3, 0x7f0a000a

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUsePreviousMusicWidget:Z

    const v3, 0x7f0a000d

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUseFavoriteAppWidget:Z

    const v3, 0x7f0a000b

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsRippleInkEffectEnabled:Z

    const v3, 0x7f0a000c

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsToggleSeekBarAndTitle:Z

    const v3, 0x7f0a000e

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsUseCustomWidget:Z

    const v3, 0x7f0a000f

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowHighLowTemp:Z

    const v3, 0x7f0a0011

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsBrilliantCutEffectSpecialTypeEnabled:Z

    const v3, 0x7f0a0010

    invoke-static {p0, v3, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isModelNameInLocalConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/keyguard/sec/KeyguardProperties;->mIsTiltEffectEnabled:Z

    const-string v3, "magazinecardservice"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/magazinecard/MagazineCardManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isServiceEnabled()Z

    move-result v3

    if-ne v3, v2, :cond_2

    :goto_1
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsMagazineCardSupport:Z

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static shouldAdjustArrowPosition()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWFeature()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLRAFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TPROJECT:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowPopupForDualClock(Landroid/content/Context;)Z
    .locals 9
    .param p0    # Landroid/content/Context;

    const/4 v8, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "my_profile_enabled"

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v2, v4

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dualclock_menu_settings"

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v0, v4

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "homecity_timezone"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    move v1, v4

    :goto_2
    const-string v6, "KeyguardProperties"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is Romaing on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n dualClock on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n is homtime null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n isProfile on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isIgnoreNationalRoaming()Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v5

    :cond_0
    :goto_3
    return v4

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    :cond_5
    move v4, v5

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_0

    :cond_7
    move v4, v5

    goto :goto_3
.end method

.method public static showNonSecureLockscrenBeforeTimeout()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeoutChecked:Z

    if-nez v1, :cond_2

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeout:Z

    :cond_1
    sput-boolean v2, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeoutChecked:Z

    :cond_2
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->mIsShowNonSecureLockscrenBeforeTimeout:Z

    return v1
.end method

.method public static useIndependentLockTimeout()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->showNonSecureLockscrenBeforeTimeout()Z

    move-result v0

    return v0
.end method
