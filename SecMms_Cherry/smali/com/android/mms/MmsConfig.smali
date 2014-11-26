.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/MmsConfig$RCS_BB_FEATURES;,
        Lcom/android/mms/MmsConfig$RCS_STATE;,
        Lcom/android/mms/MmsConfig$CoreAppsPackageType;,
        Lcom/android/mms/MmsConfig$CoreAppsControlType;
    }
.end annotation


# static fields
.field private static final ALERT_NOT_EXPIRED_ORDER:Ljava/lang/String; = "alert_expired=0"

.field public static final ALL_ALERTS:I = 0x1f

.field private static final BUBBLE_STYPE_1PAGE:Ljava/lang/String; = "1page"

.field private static final BUBBLE_STYPE_ALLPAGE:Ljava/lang/String; = "allpage"

.field private static final CMAS_ALL_IN_ONE_TOP:Ljava/lang/String; = "type=110"

.field private static final CMAS_AMBER_TOP:Ljava/lang/String; = "type=103"

.field private static final CMAS_EXTREME_TOP:Ljava/lang/String; = "type=101"

.field private static final CMAS_PRESIDENTIAL_TOP:Ljava/lang/String; = "type=100"

.field public static final CMAS_PROVIDER_ACG:I = 0xc

.field public static final CMAS_PROVIDER_ATT:I = 0x2

.field public static final CMAS_PROVIDER_CHO:I = 0x6

.field public static final CMAS_PROVIDER_GENERAL:I = 0x0

.field public static final CMAS_PROVIDER_KT:I = 0x9

.field public static final CMAS_PROVIDER_LGU:I = 0xa

.field public static final CMAS_PROVIDER_LRA:I = 0xb

.field public static final CMAS_PROVIDER_SKT:I = 0x8

.field public static final CMAS_PROVIDER_SPR:I = 0x4

.field public static final CMAS_PROVIDER_TAIWAN:I = 0xd

.field public static final CMAS_PROVIDER_TFG:I = 0x7

.field public static final CMAS_PROVIDER_TMO:I = 0x1

.field public static final CMAS_PROVIDER_USC:I = 0x5

.field public static final CMAS_PROVIDER_VZW:I = 0x3

.field private static final CMAS_SEVERE_TOP:Ljava/lang/String; = "type=102"

.field private static final CMAS_TEST_MSG_TOP:Ljava/lang/String; = "type=104"

.field private static final CMAS_UNREAD_COUNT:Ljava/lang/String; = "unread_count > 0"

.field private static final DEFAULT_HTTP_KEY_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final DEFAULT_HttpSocketTimeout:I = 0xea60

.field private static final DEFAULT_PROXY_AUTH:Ljava/lang/String; = "Proxy-Authorization"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android-Mms/2.0"

.field private static final DEFAULT_USER_NAI:Ljava/lang/String; = "ril.cdma.usernai"

.field private static EMOJI_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final EMOJI_SUPPORT_ONLYMMS:I = 0x1

.field public static final EMOJI_SUPPORT_SMSMMS:I = 0x2

.field private static final IMAGE_RESIZ_EQUALITY_FACTOR_DEFAULT:I = 0x50

.field public static final LONG_EMAIL_FEATURE_ACTIVE:Z = false

.field private static final MAX_IMAGE_HEIGHT:I

.field private static final MAX_IMAGE_HEIGHT_RESTRICTED_MODE:I = 0x1e0

.field private static final MAX_IMAGE_WIDTH:I

.field private static final MAX_IMAGE_WIDTH_RESTRICTED_MODE:I = 0x280

.field public static final MAX_PRIORITY_SENDER:I = 0x19

.field private static final MAX_TEXT_LENGTH:I = 0x7d0

.field public static MMS_GALLERY_VIEW_DISABLE:Ljava/lang/String; = null

.field public static MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String; = null

.field public static MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String; = null

.field public static final ONE_PAGE_MMS_VIEW_FEATURE_ACTIVE:Z = false

.field public static final PRESIDENTIAL_ONLY:I = 0x1

.field private static final PRODUCT_NAME:Ljava/lang/String;

.field public static RCS_STATE_VALUE:I = 0x0

.field public static SMS_DB_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/MmsConfig"

.field public static final TEXT_TEMPLATE_TYPE_CSC:I = 0x2

.field public static final TEXT_TEMPLATE_TYPE_GENERIC:I = 0x1

.field public static final TEXT_TEMPLATE_TYPE_NONE:I = 0x0

.field public static TMO_CMAS_FEATURE:Z = false

.field public static TRANSLATOR_PACKAGE_NAME:Ljava/lang/String; = null

.field private static final VALUE_TRUE:Ljava/lang/String; = "true"

.field public static final WIDGET_TYPE_ALL:I = 0x1

.field public static final WIDGET_TYPE_FAVORITE:I = 0x0

.field public static final WIDGET_TYPE_PRIORITY:I = 0x2

.field private static mEnableLmsReassembleTimeoutsCTC:Z

.field public static mFloastingFeature:Lcom/samsung/android/feature/FloatingFeature;

.field private static mIsFreeMessageServiceEnabled:Z

.field private static pref_DebugContext:Landroid/content/SharedPreferences;

.field private static sAddLogsToRecipientSearchList:Z

.field private static sAddSendOptionInComposer:Z

.field private static sAliasEnabled:Z

.field private static sAliasRuleMaxChars:I

.field private static sAliasRuleMinChars:I

.field private static sAllowAttachAudio:Z

.field private static sAttachmentFilenameEncodingType:Ljava/lang/String;

.field private static sAvailableSizeForRestrictAutoDownload:I

.field private static sBaseTimeZone:Ljava/lang/String;

.field private static sBlockSendMmsWithOnlySubject:Z

.field private static sCBChannel:[Ljava/lang/String;

.field private static sCMASVender:Lcom/android/mms/cmas/CMASVender;

.field private static sChameleonTextTemplate:[Ljava/lang/String;

.field private static sCmasConversationListQuery:Ljava/lang/String;

.field private static sConfigAddTextOption:Ljava/lang/String;

.field private static sConfigDirectCall:Ljava/lang/String;

.field private static sContactMatchCliDigit:I

.field private static sContactMenuInSimList:Z

.field private static sContactReplacePackageAs:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sDefaultMMSMessagesPerThread:I

.field private static final sDefaultRetryQuality:[I

.field private static sDefaultSMSMessagesPerThread:I

.field private static sDeliveryOffDuringRoaming:Z

.field private static sDisableAddressPlusEdit:Z

.field private static sDisableBackgroundStyleWithImage:Z

.field private static sDisableConvertingEffectBetweenSMSMMS:Z

.field private static sDisableEnterKeyInput:Z

.field private static sDisableLeftAttachButtonUI:Z

.field private static sDisableMmsAllPageBubble:Z

.field private static sDisableParsingAudioFilenameFromPart:Z

.field private static sDisableRecipientSearchByCharMatchingDigit:Z

.field private static sDisableSaveRingtoneMenu:Z

.field private static sDisableSavingInbox4CBChannel:Ljava/lang/String;

.field private static sDisableSmscEditableOnlyFor:Z

.field private static sDisplayCntInList:Z

.field private static sDisplayLocation:Z

.field private static sDisplayPushSenderAddress:Z

.field private static sEmailGateway:Ljava/lang/String;

.field private static sEmbeddedTextTemplateType:I

.field private static sEmergencyMode:I

.field private static sEmojiSupportType:I

.field private static sEnable3GHDVoice:Z

.field private static sEnableAddContactIn1stDepthComposerOption:Z

.field private static sEnableAddPrefix4InternationalCall:Z

.field private static sEnableAddRecipients:Z

.field private static sEnableAddText:Z

.field private static sEnableAirMessage:Z

.field private static sEnableAllContextMenuInMsgViewer:Z

.field private static sEnableAnonymousThread:Z

.field private static sEnableApnOnOff:Z

.field private static sEnableAttachmentFilenameEncoding:Z

.field private static sEnableAuthMdn:Z

.field private static sEnableAutoChangeKoreanNationalCode:Z

.field private static sEnableBcdNumber:Z

.field private static sEnableBlackList:Z

.field private static sEnableBlackListForCHN:Z

.field private static sEnableBlackListSeperateCallReject:Z

.field private static sEnableBlackList_Rcs:Z

.field private static sEnableCBChDisplayinStatusBar:Ljava/lang/String;

.field private static sEnableCBChannel:Z

.field private static sEnableCBMessage:Z

.field private static sEnableCBNotifications:Z

.field private static sEnableCMASTestOnOff:Z

.field private static sEnableCTWap:Z

.field private static sEnableCallbackNumber:Z

.field private static sEnableCbsVariation4:Ljava/lang/String;

.field private static sEnableChameleon:Z

.field private static sEnableCheckFDNContactWhenMMSSend:Z

.field private static sEnableCheckNumAreaCode:Z

.field private static sEnableChoseongSearch:Z

.field private static sEnableClipboardOnViewer:Z

.field public static sEnableCombindAndForwardMessage:Z

.field private static sEnableComposeTypeUI:Z

.field private static sEnableContactInfoInBubble:Z

.field private static sEnableContextServiceEnableSurveyMode:Z

.field private static sEnableCopyToSim:Z

.field private static sEnableDSAC:Z

.field private static sEnableDefaultFocusToMsgBody:Z

.field private static sEnableDefaultRingtone:Z

.field private static sEnableDelaySendSMS:Z

.field private static sEnableDeleteButtonOnActionBar:Z

.field private static sEnableDeletePermanentFailure:Z

.field private static sEnableDialogAlertWhenTextInput:Ljava/lang/String;

.field private static sEnableDiscardSameCreateWapPush:Z

.field private static sEnableDisplayNameAndNumberonTitle:Z

.field private static sEnableDoCoMoDeliveryReportFormat:Z

.field private static sEnableDocomoAccountAsDefault:Z

.field private static sEnableDraftMessageBox:Z

.field private static sEnableDualNumber4Korea:Z

.field private static sEnableEcid:Z

.field private static sEnableEmoji:Z

.field private static sEnableEmptySms:Z

.field private static sEnableEms:Z

.field private static sEnableEurKrDecoding:Z

.field private static sEnableFlickThreadView:Z

.field private static sEnableFolderView:Z

.field private static sEnableFontSize:Z

.field private static sEnableFontSizeByVolumeKey:Z

.field private static sEnableFreeMessage:Z

.field private static sEnableGroupMms:Z

.field private static sEnableIS41Email:Z

.field private static sEnableInfiniteDispMMSProgressbar:Z

.field private static sEnableIpCall:Z

.field private static sEnableKTSMSReadConfirm:Z

.field private static sEnableKoreanSpecialCharacter:Z

.field private static sEnableKsc5601:Z

.field private static sEnableLguHttpHeader:Z

.field private static sEnableLimitMmsBodyByte:Z

.field private static sEnableLimitOnMmsSubjectByByte:Z

.field private static sEnableLinkDAUSA:Z

.field private static sEnableLinkDAUSA2:Z

.field private static sEnableLocation:Z

.field private static sEnableLockedMsgManager:Z

.field private static sEnableLogs:Z

.field private static sEnableMMSDeliveryReports:Z

.field private static sEnableMMSReadReports:Z

.field private static sEnableMMSSendDeliveryReports:Z

.field private static sEnableMMSStatusUIForCHN:Z

.field private static sEnableManageSimMessages:Z

.field private static sEnableMediaDuration:Z

.field private static sEnableMenuInsertSenderInfoWhenFwdMsg:Z

.field private static sEnableMenuMmsServerAddr:Z

.field private static sEnableMessageAutoView:Z

.field private static sEnableMessageDbBackupKeystring:Z

.field private static sEnableMessageMaxTextLengthInAllSlides:Z

.field private static sEnableMessageNotificationPopup:Z

.field private static sEnableMessageReminderAlert:Z

.field private static sEnableMmsAutoDownload4Spam:Z

.field private static sEnableMmsCreationMode:Z

.field private static sEnableMmsDataOffNumeric:Ljava/lang/String;

.field private static sEnableMmsDeliveryTime:Z

.field private static sEnableMmsDetailVzw:Z

.field private static sEnableMmsExpiryDate:Z

.field private static sEnableMmsMobiledataOff:Z

.field private static sEnableMmsOnePageViewer:Z

.field private static sEnableMmsPriority:Z

.field private static sEnableMmsServerTime:Z

.field private static sEnableMmsSubjectConcept4Korea:Z

.field private static sEnableMmsTransactionCustomize4Korea:Z

.field private static sEnableMmsUserInputApn:Z

.field private static sEnableMultiCopyToSIM:Z

.field private static sEnableMultiDraftMsgBox:Z

.field private static sEnableMultiLockMenu:Z

.field private static sEnableMultipartSMS:Z

.field private static sEnableMultiwindow:Z

.field private static sEnableNotificationBacklight:Z

.field private static sEnableNotificationBoradcastReceivedMsg:Z

.field private static sEnablePhoneAndServerTime:Z

.field private static sEnablePhoneNumberFormattingInMsg:Z

.field private static sEnablePickContactLimit:Z

.field public static sEnablePinyinSearch:Z

.field private static sEnablePlusButtonOnRecipient:Z

.field private static sEnablePolicy:Z

.field private static sEnablePriority:Z

.field private static sEnableRTSReject:Ljava/lang/String;

.field private static sEnableRcsScheduledMessage:Z

.field private static sEnableReceivePortSMS:Z

.field private static sEnableRecordAudio:Z

.field private static sEnableRegisterCalendar:Z

.field private static sEnableRemovingContactThumbnailInMsgList:Z

.field private static sEnableReplaceLabelOnRequestedStatus:Z

.field private static sEnableReplacingCarriageReturnIntoNewLine:Z

.field private static sEnableReplyAll:Z

.field private static sEnableRequestSendNoSrv:Z

.field private static sEnableRetrievalDuringRoaming:Z

.field private static sEnableRoamGuard:Z

.field private static sEnableSIMMessageCountUI:Z

.field private static sEnableSMSC:Z

.field private static sEnableSMSCEditable:Z

.field private static sEnableSMSDeliveryReports:Z

.field private static sEnableSMSP:Z

.field private static sEnableSMemo:Z

.field private static sEnableSNote:Z

.field private static sEnableSOSPrefix:Z

.field private static sEnableSPlanner:Z

.field private static sEnableSSMS:Z

.field private static sEnableSaveClassZeroMessage:Z

.field private static sEnableSaveVMessage:Z

.field private static sEnableScrapbook:Z

.field private static sEnableSegmentedSms:Z

.field private static sEnableSendMmsReadReportPdu:Z

.field private static sEnableSentTimeInSimList:Z

.field private static sEnableServerTimeLabel:Z

.field private static sEnableServiceLoading:Z

.field private static sEnableSignature:Z

.field private static sEnableSlideDuration:Z

.field private static sEnableSlideshowAutoPlay:Z

.field private static sEnableSmsExpiryDate:Z

.field private static sEnableSmsForwardPrefix:Z

.field private static sEnableSmsInputMode:Z

.field private static sEnableSmsMaxByte:Z

.field private static sEnableSmsServerTime:Z

.field private static sEnableSmsSubject:Z

.field private static sEnableSmsViewer:Z

.field private static sEnableSmsViewerPinchZoom:Z

.field private static sEnableSpamReport4Kor:Ljava/lang/String;

.field private static sEnableSpeedDial:Z

.field private static sEnableSplitMode:Z

.field private static sEnableStageFlightLib:Z

.field private static sEnableSticker:Z

.field private static sEnableStrictImageResizing:Z

.field private static sEnableSubject:Z

.field private static sEnableTextTemplateButton:Z

.field private static sEnableTexttemplatTMOMenu:Z

.field private static sEnableUnknownAddressToNullInDB:Z

.field private static sEnableUnknownURLlink:Z

.field private static sEnableVCalendar:Z

.field private static sEnableVCard:Z

.field private static sEnableVIPModeApplication:Z

.field private static sEnableVMemo:Z

.field private static sEnableVTask:Z

.field private static sEnableVibration4NotiDuringCall:Z

.field private static sEnableViewByMessageType:Z

.field private static sEnableVoLTE:Z

.field private static sEnableWapPush:Z

.field private static sEnableWhiteList:Z

.field private static sEnableWvgaFontSize:Z

.field private static sEnableYellowPage:Z

.field private static sForwardPrefix:I

.field private static sGalleryView4SingleImageMMSType:Ljava/lang/String;

.field private static sHttpParams:Ljava/lang/String;

.field private static sHttpParamsLine1Key:Ljava/lang/String;

.field private static sHttpSocketTimeout:I

.field private static sImageResizeQualityFactorWhenAttach:I

.field private static sInstalledFreeMessage:Z

.field private static sInstalledShopAgent:Z

.field private static sIsContextProviderForAlways:Z

.field private static sLocale:Ljava/lang/String;

.field private static sMaxFreeMessageAdhocGroupSizeMax:I

.field private static sMaxFreeMessageSize:J

.field private static sMaxFreeMessageWarnSize:J

.field private static sMaxImageHeight:I

.field private static sMaxImageHeightRestrictedMode:I

.field private static sMaxImageWidth:I

.field private static sMaxImageWidthRestrictedMode:I

.field private static sMaxMessageCountPerThread:I

.field private static sMaxMessageSize:I

.field private static sMaxMessageSizeForResizing:I

.field private static sMaxQuality:Z

.field private static sMaxRawAttachmentCount:I

.field private static sMaxRawAttachmentCountForContact:I

.field private static sMaxRecipientLength:I

.field private static sMaxSizeScaleForPendingMmsAllowed:I

.field private static sMaxSlideCount:I

.field private static sMaxSubjectLength:I

.field private static sMaxTextLength:I

.field private static sMaximumEmailAddressLength:I

.field private static sMessageConfigImeiTracker:Ljava/lang/String;

.field private static sMessageReminderAlert:Ljava/lang/String;

.field private static sMinMessageCountPerThread:I

.field private static sMinRecipientLength:I

.field private static sMinimumSlideElementDuration:I

.field private static sMms2gAutodownloadAfterCall:I

.field private static sMmsEnabled:Z

.field private static sMmsExpiry:I

.field private static sMmsHeaderSize:I

.field private static sMmsModeCaptureVideoMaxSize:I

.field private static sMmsPageStyleInBubble:Ljava/lang/String;

.field private static sMmsRecipientLimit:I

.field private static sMmsServerAddressEditable:Z

.field private static sMmsServerPortEditable:Z

.field private static sMmsUaUapAutoCreate:Ljava/lang/String;

.field private static sMmsVersion:F

.field private static sMoveReadNDeliverySettingToComposer:Z

.field private static sMsgtoneRepeatInterval:I

.field private static sNotifyWapMMSC:Z

.field private static sOperatorNumeric:Ljava/lang/String;

.field private static sOptionalFieldAttendance:Z

.field private static sPageCountForLMSNoti:I

.field private static sPriority:Ljava/lang/String;

.field private static sRecipientLimit:I

.field private static sRemoveFileNameSpace:Z

.field private static sRemoveInternationalTelNumPrefix:Z

.field private static sRoamingTimeSchemeForCHN:Z

.field private static sSSMSOperator:Ljava/lang/String;

.field private static sSavePdu:Z

.field private static sSetFontSizeByVolumeKey:Z

.field private static sSmsDiscardPrefix:Ljava/lang/String;

.field private static sSmsMaxByte:I

.field private static sSmsToMmsByThreshold:Z

.field private static sSmsToMmsTextThreshold:I

.field private static sSplitThread:Z

.field private static sSupportHideMmsRoamingAutoDownloadOption:I

.field private static sSupportQwertKeypad:I

.field private static sTWVersion:F

.field private static sTetheringmode:Z

.field private static sTransIdEnabled:Z

.field private static sTransactionLoggable:Z

.field private static sTransactionTimeout:I

.field private static sUaProfTagName:Ljava/lang/String;

.field private static sUaProfUrl:Ljava/lang/String;

.field private static sUserAgent:Ljava/lang/String;

.field private static sUserNai:Ljava/lang/String;

.field private static sVibrateWhen:Ljava/lang/String;

.field private static templateArrayValue:[Ljava/lang/String;

.field private static uspLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput v2, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->PRODUCT_NAME:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    :goto_0
    sput v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_HEIGHT:I

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    :goto_1
    sput v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_WIDTH:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->TMO_CMAS_FEATURE:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sCmasConversationListQuery:Ljava/lang/String;

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableRcsScheduledMessage:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sTransIdEnabled:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sMmsEnabled:Z

    const v0, 0x4b000

    sput v0, Lcom/android/mms/MmsConfig;->sMaxMessageSize:I

    const-string v0, "Android-Mms/2.0"

    sput-object v0, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    const-string v0, "x-wap-profile"

    sput-object v0, Lcom/android/mms/MmsConfig;->sUaProfTagName:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/MmsConfig;->sHttpParams:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/MmsConfig;->sHttpParamsLine1Key:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/MmsConfig;->sEmailGateway:Ljava/lang/String;

    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_HEIGHT:I

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_WIDTH:I

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeightRestrictedMode:I

    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidthRestrictedMode:I

    const/16 v0, 0x3e8

    sput v0, Lcom/android/mms/MmsConfig;->sRecipientLimit:I

    const/16 v0, 0x3e8

    sput v0, Lcom/android/mms/MmsConfig;->sDefaultSMSMessagesPerThread:I

    const/16 v0, 0x3e8

    sput v0, Lcom/android/mms/MmsConfig;->sDefaultMMSMessagesPerThread:I

    sput v6, Lcom/android/mms/MmsConfig;->sMinMessageCountPerThread:I

    const/16 v0, 0x1388

    sput v0, Lcom/android/mms/MmsConfig;->sMaxMessageCountPerThread:I

    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    const/4 v0, 0x5

    sput v0, Lcom/android/mms/MmsConfig;->sMinimumSlideElementDuration:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sNotifyWapMMSC:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sAllowAttachAudio:Z

    const/16 v0, 0x3e8

    sput v0, Lcom/android/mms/MmsConfig;->sSmsToMmsTextThreshold:I

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMultipartSMS:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSlideDuration:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMMSReadReports:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSMSDeliveryReports:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMMSDeliveryReports:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMMSSendDeliveryReports:Z

    sput v5, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    sput v6, Lcom/android/mms/MmsConfig;->sMaxSizeScaleForPendingMmsAllowed:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sAliasEnabled:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/mms/MmsConfig;->sAliasRuleMinChars:I

    const/16 v0, 0x30

    sput v0, Lcom/android/mms/MmsConfig;->sAliasRuleMaxChars:I

    const/16 v0, 0x3e8

    sput v0, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    const/16 v0, 0x1400

    sput v0, Lcom/android/mms/MmsConfig;->sMmsHeaderSize:I

    const/high16 v0, 0x40a00000

    sput v0, Lcom/android/mms/MmsConfig;->sTWVersion:F

    const v0, 0x3f99999a

    sput v0, Lcom/android/mms/MmsConfig;->sMmsVersion:F

    const/16 v0, 0x3e8

    sput v0, Lcom/android/mms/MmsConfig;->sMmsRecipientLimit:I

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableFontSize:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableWvgaFontSize:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSplitMode:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsMaxByte:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitMmsBodyByte:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableEmptySms:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableBlackList:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableWhiteList:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSaveVMessage:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableTextTemplateButton:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVCalendar:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVTask:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableServerTimeLabel:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsServerTime:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMmsServerTime:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSignature:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSegmentedSms:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsSubject:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAnonymousThread:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsForwardPrefix:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableEms:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnablePriority:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCallbackNumber:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsViewerPinchZoom:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableStrictImageResizing:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableEmoji:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDoCoMoDeliveryReportFormat:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDSAC:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSMSP:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableContactInfoInBubble:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMultiLockMenu:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCTWap:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableRoamGuard:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableChoseongSearch:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableReplyAll:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMessageReminderAlert:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsExpiryDate:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsPriority:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsDeliveryTime:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSmsExpiryDate:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableNotificationBacklight:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMessageNotificationPopup:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMessageAutoView:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableIS41Email:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableBlackListForCHN:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableBlackListSeperateCallReject:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAttachmentFilenameEncoding:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDiscardSameCreateWapPush:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sSmsToMmsByThreshold:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSlideshowAutoPlay:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableVCard:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableVMemo:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableLocation:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableRecordAudio:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSPlanner:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSMemo:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSNote:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableScrapbook:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableCBMessage:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSmsViewer:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableEnterKeyInput:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableRetrievalDuringRoaming:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableWapPush:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableServiceLoading:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableStageFlightLib:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSmsInputMode:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSMSC:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSMSCEditable:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMmsCreationMode:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSubject:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableManageSimMessages:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableCopyToSim:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableCBChannel:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSaveClassZeroMessage:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableFontSizeByVolumeKey:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sSetFontSizeByVolumeKey:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableSendMmsReadReportPdu:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDefaultFocusToMsgBody:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableInfiniteDispMMSProgressbar:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableLockedMsgManager:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSentTimeInSimList:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMessageDbBackupKeystring:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableFolderView:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsOnePageViewer:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableCBNotifications:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCheckFDNContactWhenMMSSend:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAllContextMenuInMsgViewer:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMessageMaxTextLengthInAllSlides:Z

    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sMessageConfigImeiTracker:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMenuInsertSenderInfoWhenFwdMsg:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sDisplayPushSenderAddress:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsAutoDownload4Spam:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAddContactIn1stDepthComposerOption:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnablePlusButtonOnRecipient:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnablePinyinSearch:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCombindAndForwardMessage:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableDraftMessageBox:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableMmsAllPageBubble:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sMmsPageStyleInBubble:Ljava/lang/String;

    const-string v0, "com.sec.android.app.translator.TRANSLATE"

    sput-object v0, Lcom/android/mms/MmsConfig;->TRANSLATOR_PACKAGE_NAME:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableEcid:Z

    const-string v0, "never"

    sput-object v0, Lcom/android/mms/MmsConfig;->sVibrateWhen:Ljava/lang/String;

    const/16 v0, 0x8c

    sput v0, Lcom/android/mms/MmsConfig;->sSmsMaxByte:I

    const/16 v6, 0x3e8

    sput v6, Lcom/android/mms/MmsConfig;->sMaxSlideCount:I

    sput v2, Lcom/android/mms/MmsConfig;->sForwardPrefix:I

    const-string v0, "normal"

    sput-object v0, Lcom/android/mms/MmsConfig;->sPriority:Ljava/lang/String;

    sput v2, Lcom/android/mms/MmsConfig;->sContactMatchCliDigit:I

    const-string v0, "1"

    sput-object v0, Lcom/android/mms/MmsConfig;->sMessageReminderAlert:Ljava/lang/String;

    const/16 v0, 0x32

    sput v0, Lcom/android/mms/MmsConfig;->sMaxRawAttachmentCountForContact:I

    sput v6, Lcom/android/mms/MmsConfig;->sMaxRawAttachmentCount:I

    sput-object v4, Lcom/android/mms/MmsConfig;->sCBChannel:[Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMenuMmsServerAddr:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sMmsServerAddressEditable:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sMmsServerPortEditable:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sSmsDiscardPrefix:Ljava/lang/String;

    sput v3, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    const v0, 0x93a80

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    const-string v0, "ASCII"

    sput-object v0, Lcom/android/mms/MmsConfig;->sAttachmentFilenameEncodingType:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/MmsConfig;->sDisableSavingInbox4CBChannel:Ljava/lang/String;

    sput-object v4, Lcom/android/mms/MmsConfig;->sEnableCBChDisplayinStatusBar:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableClipboardOnViewer:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableEurKrDecoding:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableKsc5601:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableBcdNumber:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAutoChangeKoreanNationalCode:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableKoreanSpecialCharacter:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableComposeTypeUI:Z

    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sEnableRTSReject:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLguHttpHeader:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnablePhoneNumberFormattingInMsg:Z

    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sEnableCbsVariation4:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSpeedDial:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMultiCopyToSIM:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMMSStatusUIForCHN:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnablePickContactLimit:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSIMMessageCountUI:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sTransactionLoggable:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sOptionalFieldAttendance:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sSavePdu:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAuthMdn:Z

    sput v2, Lcom/android/mms/MmsConfig;->sMms2gAutodownloadAfterCall:I

    sput v2, Lcom/android/mms/MmsConfig;->sSupportHideMmsRoamingAutoDownloadOption:I

    sput v3, Lcom/android/mms/MmsConfig;->sSupportQwertKeypad:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableNotificationBoradcastReceivedMsg:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsMobiledataOff:Z

    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sEnableMmsDataOffNumeric:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMediaDuration:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableUnknownAddressToNullInDB:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsDetailVzw:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->templateArrayValue:[Ljava/lang/String;

    const v0, 0x7d000

    sput v0, Lcom/android/mms/MmsConfig;->sMaxMessageSizeForResizing:I

    const v0, 0x3a980

    sput v0, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    const/4 v0, 0x3

    sput v0, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    sput v5, Lcom/android/mms/MmsConfig;->sMaxRecipientLength:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVIPModeApplication:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSOSPrefix:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableAddressPlusEdit:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableTexttemplatTMOMenu:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableReceivePortSMS:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableReplaceLabelOnRequestedStatus:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sAddSendOptionInComposer:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableLogs:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableReplacingCarriageReturnIntoNewLine:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVibration4NotiDuringCall:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/mms/MmsConfig;->sEmojiSupportType:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sAddLogsToRecipientSearchList:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDocomoAccountAsDefault:Z

    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sContactReplacePackageAs:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableIpCall:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCheckNumAreaCode:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableRegisterCalendar:Z

    const-string v0, "image"

    sput-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    const-string v0, "imagetext"

    sput-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String;

    const-string v0, "none"

    sput-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_DISABLE:Ljava/lang/String;

    const-string v0, "none"

    sput-object v0, Lcom/android/mms/MmsConfig;->sGalleryView4SingleImageMMSType:Ljava/lang/String;

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableAddRecipients:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDeleteButtonOnActionBar:Z

    const/16 v0, 0x3e8

    sput v0, Lcom/android/mms/MmsConfig;->sMaximumEmailAddressLength:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableLmsReassembleTimeoutsCTC:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sTetheringmode:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sUserNai:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableConvertingEffectBetweenSMSMMS:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableBackgroundStyleWithImage:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableDisplayNameAndNumberonTitle:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSaveRingtoneMenu:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLinkDAUSA:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableLeftAttachButtonUI:Z

    const/16 v0, 0x50

    sput v0, Lcom/android/mms/MmsConfig;->sImageResizeQualityFactorWhenAttach:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableRemovingContactThumbnailInMsgList:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sIsContextProviderForAlways:Z

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sChameleonTextTemplate:[Ljava/lang/String;

    sput-object v4, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableGroupMms:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVoLTE:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnable3GHDVoice:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableApnOnOff:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsUserInputApn:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsSubjectConcept4Korea:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableRecipientSearchByCharMatchingDigit:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMmsTransactionCustomize4Korea:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableRequestSendNoSrv:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDualNumber4Korea:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableParsingAudioFilenameFromPart:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sEnableDialogAlertWhenTextInput:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sBlockSendMmsWithOnlySubject:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableFlickThreadView:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAddPrefix4InternationalCall:Z

    sput v2, Lcom/android/mms/MmsConfig;->sAvailableSizeForRestrictAutoDownload:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sRemoveInternationalTelNumPrefix:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableMultiDraftMsgBox:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableCMASTestOnOff:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sMoveReadNDeliverySettingToComposer:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableKTSMSReadConfirm:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sOperatorNumeric:Ljava/lang/String;

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableUnknownURLlink:Z

    sput v5, Lcom/android/mms/MmsConfig;->uspLevel:I

    sput-object v4, Lcom/android/mms/MmsConfig;->sEnableSpamReport4Kor:Ljava/lang/String;

    sput v5, Lcom/android/mms/MmsConfig;->sPageCountForLMSNoti:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnablePhoneAndServerTime:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sRemoveFileNameSpace:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sConfigDirectCall:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisplayCntInList:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sRoamingTimeSchemeForCHN:Z

    const-string v0, ""

    sput-object v0, Lcom/android/mms/MmsConfig;->sBaseTimeZone:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDeliveryOffDuringRoaming:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sContactMenuInSimList:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sSplitThread:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisplayLocation:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableViewByMessageType:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSSMS:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sSSMSOperator:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableContextServiceEnableSurveyMode:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableFreeMessage:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnablePolicy:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableSticker:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mIsFreeMessageServiceEnabled:Z

    const-wide/32 v0, 0x1e00000

    sput-wide v0, Lcom/android/mms/MmsConfig;->sMaxFreeMessageSize:J

    const-wide/32 v0, 0x1e00000

    sput-wide v0, Lcom/android/mms/MmsConfig;->sMaxFreeMessageWarnSize:J

    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->sMaxFreeMessageAdhocGroupSizeMax:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sInstalledFreeMessage:Z

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sInstalledShopAgent:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    sput-boolean v3, Lcom/android/mms/MmsConfig;->sEnableBlackList_Rcs:Z

    sput v2, Lcom/android/mms/MmsConfig;->RCS_STATE_VALUE:I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableYellowPage:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sContext:Landroid/content/Context;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAirMessage:Z

    sput-object v4, Lcom/android/mms/MmsConfig;->sConfigAddTextOption:Ljava/lang/String;

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableAddText:Z

    sput v5, Lcom/android/mms/MmsConfig;->sEmergencyMode:I

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->mFloastingFeature:Lcom/samsung/android/feature/FloatingFeature;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/MmsConfig;->sDefaultRetryQuality:[I

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sMaxQuality:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x64
        0x63
        0x62
        0x5f
        0x5a
        0x55
        0x50
        0x4b
        0x46
        0x41
        0x28
        0x23
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CMASDialogMoveToFrontWhenCallingStatus()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v1}, Lcom/android/mms/cmas/CMASVender;->getCMASProvider()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static DEBUG_getBlockContextAwareness()Z
    .locals 3

    sget-object v0, Lcom/android/mms/MmsConfig;->pref_DebugContext:Landroid/content/SharedPreferences;

    const-string v1, "DEBUG_mBlockContextAwareness"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static SetChameleonTextTemplate(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->sChameleonTextTemplate:[Ljava/lang/String;

    return-void
.end method

.method public static SetPreloadTextTemplate(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->templateArrayValue:[Ljava/lang/String;

    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "templateArrayValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addPrioritySendersForUnpack()V
    .locals 12

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    sget-object v8, Lcom/android/mms/MmsConfig;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    move-result-object v3

    invoke-virtual {v3, v9, v9, v11}, Lcom/android/mms/glance/GlanceDBHelper;->delete(Ljava/lang/String;[Ljava/lang/String;I)I

    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/String;

    const-string v8, "+16451873"

    aput-object v8, v1, v10

    const/4 v8, 0x1

    const-string v9, "+16481537"

    aput-object v9, v1, v8

    const-string v8, "+14673451"

    aput-object v8, v1, v11

    invoke-virtual {v3}, Lcom/android/mms/glance/GlanceDBHelper;->getMaxPriority()J

    move-result-wide v6

    move-object v2, v1

    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    sget-object v8, Lcom/android/mms/MmsConfig;->sContext:Landroid/content/Context;

    invoke-static {v8, v0, v6, v7, v10}, Lcom/android/mms/glance/GlanceUtils;->addPrioritySender(Landroid/content/Context;Ljava/lang/String;JZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v8, Lcom/android/mms/MmsConfig;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v2, :cond_2

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method private static checkContextProviderForAlways(Landroid/content/Context;)Z
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.providers.context"

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static checkInsatalledFreeMessage(Landroid/content/Context;)Z
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.orca.freemessage"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static checkInsatalledShopAgent(Landroid/content/Context;)Z
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.orca.shopagent"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static checkTranslatorEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/mms/MmsConfig;->TRANSLATOR_PACKAGE_NAME:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static dataCreateUnpack()V
    .locals 3

    const-string v2, "content://mms-sms/datacreateunpack"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/android/mms/MmsConfig;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/MmsConfig;->addPrioritySendersForUnpack()V

    return-void
.end method

.method private static disableComponent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private static enableComponent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method private static generateUaString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0    # Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v2, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v8, "; "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "en-us; "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    const-string v8, " Build/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    :goto_1
    return-object v6

    :cond_3
    const-string v8, "1.0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string v8, ""

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v2, "%s Mozilla/5.0 SMM-MMS/1.2.0"

    const-string v8, "SAMSUNG-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "gsm.version.baseband"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_7
    const-string v8, "ggsm-tmo"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "ggsm-tmo-ua"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_8
    const-string v2, "SAMSUNG-ANDROID-MMS/%s"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_9

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const-string v8, "-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private static generateUapUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0    # Ljava/lang/String;

    const/4 v3, 0x0

    const-string v0, "http://wap.samsungmobile.com/uaprof/%s.xml"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "ggsm-tmo"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ggsm-tmo-uap"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "BO"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method public static getAcmsClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.acms.AcmsWrapper"

    return-object v0
.end method

.method public static getAddLogsToRecipientSearchList()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sAddLogsToRecipientSearchList:Z

    return v0
.end method

.method public static getAddSendOptionInComposer()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sAddSendOptionInComposer:Z

    return v0
.end method

.method public static getAliasMaxChars()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sAliasRuleMinChars:I

    return v0
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sAllowAttachAudio:Z

    return v0
.end method

.method public static getAllowWriteMessage()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    return v0
.end method

.method public static getAttachmentFilenameEncodingType()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "BASE64"

    sput-object v0, Lcom/android/mms/MmsConfig;->sAttachmentFilenameEncodingType:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/android/mms/MmsConfig;->sAttachmentFilenameEncodingType:Ljava/lang/String;

    return-object v0
.end method

.method public static getAvailableSizeForRestrictAutoDownload()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sAvailableSizeForRestrictAutoDownload:I

    return v0
.end method

.method public static getBaseTimeZone()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sBaseTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public static getBlockSendMmsWithOnlySubject()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sBlockSendMmsWithOnlySubject:Z

    return v0
.end method

.method public static getCBChannel()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCBChannel:[Ljava/lang/String;

    return-object v0
.end method

.method public static getCDMACMASEnable()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCDMACMASEnable()Z

    move-result v0

    return v0
.end method

.method public static getCDMADisplayLatestEnable()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCDMADisplayLatestEnable()Z

    move-result v0

    return v0
.end method

.method public static getCMASDialogOKisDismiss()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCMASDialogOKisDismiss()Z

    move-result v0

    return v0
.end method

.method public static getCMASProvider()I
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCMASProvider()I

    move-result v0

    return v0
.end method

.method public static getChameleonTextTemplate()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sChameleonTextTemplate:[Ljava/lang/String;

    return-object v0
.end method

.method public static getCmasAlertSoundMenu()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasAlertSoundMenu()Z

    move-result v0

    return v0
.end method

.method public static getCmasAlertTopUnlessRead()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasAlertTopUnlessRead()Z

    move-result v0

    return v0
.end method

.method public static getCmasAllInOneThreaded()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasAllInOneThreaded()Z

    move-result v0

    return v0
.end method

.method public static getCmasConversationListQuery()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCmasConversationListQuery:Ljava/lang/String;

    return-object v0
.end method

.method public static getCmasFontSizePref()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasTestMode()Z

    move-result v0

    return v0
.end method

.method public static getCmasMessageDuplicateMessageCheckFeature()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasMessageDuplicateMessageCheckFeature()Z

    move-result v0

    return v0
.end method

.method public static getCmasMessagePriorityCheckFeature()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasMessagePriorityCheckFeature()Z

    move-result v0

    return v0
.end method

.method public static getCmasMessageServereBelongToExtreme()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasMessageServereBelongToExtreme()Z

    move-result v0

    return v0
.end method

.method public static getCmasNotiDateDescription()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasNotiDateDescription()Z

    move-result v0

    return v0
.end method

.method public static getCmasNotificationPref()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasNotificationPref()Z

    move-result v0

    return v0
.end method

.method private static getCmasOrderSetting()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasWhichMsgOnTop()I

    move-result v2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAllInOneThreaded()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "(type=110) AND unread_count > 0 DESC ,"

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAlertTopUnlessRead()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1

    const-string v0, "(type=100 OR type=101 OR type=102 OR type=103 OR type=104) AND unread_count > 0 DESC ,"

    :cond_1
    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    const-string v0, "type=100 AND alert_expired=0 DESC ,"

    goto :goto_1
.end method

.method public static getCmasPresidentialOPTOUTPref()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasPresidentialOPTOUTPref()Z

    move-result v0

    return v0
.end method

.method public static getCmasPresidentialOnTop()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasPresidentialOnTop()Z

    move-result v0

    return v0
.end method

.method public static getCmasPresidentialThreaded()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasPresidentialThreaded()Z

    move-result v0

    return v0
.end method

.method public static getCmasTestMessageWithHiddenMenu()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasTestMessageWithHiddenMenu()Z

    move-result v0

    return v0
.end method

.method public static getCmasTestSPRFeature()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasTestSPRFeature()Z

    move-result v0

    return v0
.end method

.method public static getCmasVibrationPreviewPref()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasVibrationPreviewPref()Z

    move-result v0

    return v0
.end method

.method public static getCmasWhichMsgOnTop()I
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCmasWhichMsgOnTop()I

    move-result v0

    return v0
.end method

.method public static getContactMatchCliDigit()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sContactMatchCliDigit:I

    return v0
.end method

.method public static getContactReplacePackageAs()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sContactReplacePackageAs:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultMMSMessagesPerThread()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public static getDefaultSMSMessagesPerThread()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public static getDisableAddressPlusEdit()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableAddressPlusEdit:Z

    return v0
.end method

.method public static getDisableBackgroundStyleWithImage()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableBackgroundStyleWithImage:Z

    return v0
.end method

.method public static getDisableChangeMMSInRoaming()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

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

.method public static getDisableCheckIMSIForSimIcon()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

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

.method public static getDisableComposeWhenLowMemory()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

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

.method public static getDisableComposerPageCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getDisableContactDisplayFormatOneAndOthers()Z
    .locals 2

    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getDisableConvertingEffectBetweenSMSMMS()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMmsEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableConvertingEffectBetweenSMSMMS:Z

    goto :goto_0
.end method

.method public static getDisableDeliveryReportInRoaming()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDeliveryOffDuringRoaming:Z

    return v0
.end method

.method public static getDisableDirectCall()Z
    .locals 2

    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableDialogAlertWhenTextInput:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->sConfigDirectCall:Ljava/lang/String;

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getDisableEmojiForChn()Z
    .locals 3

    const-string v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHN"

    const-string v2, "USA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HKTW"

    const-string v2, "USA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static getDisableEnterKeyInput()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableEnterKeyInput:Z

    return v0
.end method

.method public static getDisableEntranceSetting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getDisableLandscapeModeonActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getDisableMmsAllPageBubble()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableMmsAllPageBubble:Z

    return v0
.end method

.method public static getDisableParsingAudioFilenameFromPart()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableParsingAudioFilenameFromPart:Z

    return v0
.end method

.method public static getDisableRecipientSearchByCharMatchingDigit()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableRecipientSearchByCharMatchingDigit:Z

    return v0
.end method

.method public static getDisableSavingInbox4CBChannel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sDisableSavingInbox4CBChannel:Ljava/lang/String;

    return-object v0
.end method

.method public static getDisableSmscEditableOnlyFor()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    return v0
.end method

.method public static getDisableVItemAttachment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getDisplayPushSenderAddress()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisplayPushSenderAddress:Z

    return v0
.end method

.method public static getEasySignUpStatus(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->isAuth(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getEmailGateway()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sEmailGateway:Ljava/lang/String;

    return-object v0
.end method

.method public static getEmbeddedTextTemplateType()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    return v0
.end method

.method public static getEmojiSupportMode()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sEmojiSupportType:I

    return v0
.end method

.method public static getEnable3GHDVoice()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnable3GHDVoice:Z

    return v0
.end method

.method public static getEnableAMapLocation()Z
    .locals 2

    const-string v0, "CHN"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getEnableAddPrefix4InternationalCall()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAddPrefix4InternationalCall:Z

    return v0
.end method

.method public static getEnableAddRecipients()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAddRecipients:Z

    return v0
.end method

.method public static getEnableAddText()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAddText:Z

    return v0
.end method

.method public static getEnableAirMessage()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAirMessage:Z

    return v0
.end method

.method public static getEnableAlertInEcbmMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableAllContextMenuInMsgViewer()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAllContextMenuInMsgViewer:Z

    return v0
.end method

.method public static getEnableAnonymousThread()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAnonymousThread:Z

    return v0
.end method

.method public static getEnableApnOnOff()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableApnOnOff:Z

    return v0
.end method

.method public static getEnableAssistantMenu(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getEnableAttAcms()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableAttachmentFilenameEncoding()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAttachmentFilenameEncoding:Z

    return v0
.end method

.method public static final getEnableAuthMdn()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAuthMdn:Z

    return v0
.end method

.method public static getEnableAutoChangeKoreanNationalCode()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAutoChangeKoreanNationalCode:Z

    return v0
.end method

.method public static getEnableAutoSmsSending()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableAutoVideoResize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableBcdNumber()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableBcdNumber:Z

    return v0
.end method

.method public static getEnableBlackList()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableBlackList:Z

    return v0
.end method

.method public static getEnableBlackListForCHN()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableBlackListForCHN:Z

    return v0
.end method

.method public static getEnableBlackListForKor()Z
    .locals 2

    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getEnableBlackListSeperateCallReject()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableBlackListSeperateCallReject:Z

    return v0
.end method

.method public static getEnableBlackList_Rcs()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableBlackList_Rcs:Z

    return v0
.end method

.method public static getEnableCBChannel()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCBChannel:Z

    return v0
.end method

.method public static getEnableCBChannel4DisplayInStatusBar()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableCBChDisplayinStatusBar:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnableCBMessage()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCBMessage:Z

    return v0
.end method

.method public static getEnableCBNotifications()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCBNotifications:Z

    return v0
.end method

.method public static getEnableCMASTestOnOff()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCMASTestOnOff:Z

    return v0
.end method

.method public static getEnableCTWap()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCTWap:Z

    return v0
.end method

.method public static getEnableCallLogContactQuery()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableCallbackNumber()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCallbackNumber:Z

    return v0
.end method

.method public static getEnableCbsVariation4()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableCbsVariation4:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnableCdmaCmasOverLte()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableChameleon()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    return v0
.end method

.method public static getEnableCheckFDNContactWhenMMSSend()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCheckFDNContactWhenMMSSend:Z

    return v0
.end method

.method public static getEnableCheckInvalidGroupRecipient()Z
    .locals 2

    const-string v0, "ATT"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getEnableCheckNumAreaCode()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCheckNumAreaCode:Z

    return v0
.end method

.method public static getEnableCheckOtherSimSlotTransaction()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipInRoaming()Z

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

.method public static getEnableChoseongSearch()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableChoseongSearch:Z

    return v0
.end method

.method public static getEnableClipboardOnViewer()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableClipboardOnViewer:Z

    return v0
.end method

.method public static getEnableCmas()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getEnableCmas()Z

    move-result v0

    return v0
.end method

.method public static getEnableCombineAndForwardMenu()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCombindAndForwardMessage:Z

    return v0
.end method

.method public static getEnableComposeTypeUI()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableComposeTypeUI:Z

    return v0
.end method

.method public static getEnableContactInfoInBubble()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableContactInfoInBubble:Z

    return v0
.end method

.method public static getEnableContactMenuInSimList()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sContactMenuInSimList:Z

    return v0
.end method

.method public static getEnableContextServiceEnable()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableContextServiceEnableSurveyMode:Z

    return v0
.end method

.method public static getEnableCopyToSim()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableCopyToSim:Z

    return v0
.end method

.method public static getEnableDSAC()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDSAC:Z

    return v0
.end method

.method public static getEnableDSDSOnechipOnQCOM()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableDSDSTwochipInRoaming()Z
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isDsdsModelOnlyRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    const-string v1, "ril.twochip.roaming"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsConfig"

    const-string v1, "getEnableDSDSTwochipInRoaming() is true"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableDSDSTwochipOnQCOM()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableDataOnlyDSDSOnechip()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableDataSwitchInTwochip()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipInRoaming()Z

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

.method public static getEnableDefaultRingtone()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDefaultRingtone:Z

    return v0
.end method

.method public static getEnableDelaySendSMS()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    return v0
.end method

.method public static getEnableDelaySending()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableDeleteButtonOnActionBar()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDeleteButtonOnActionBar:Z

    return v0
.end method

.method public static getEnableDeletePermanentFailure()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    return v0
.end method

.method public static getEnableDialogAlertWhenTextInputForKor()Z
    .locals 2

    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableDialogAlertWhenTextInput:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableDialogAlertWhenTextInput:Ljava/lang/String;

    const-string v1, "kor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getEnableDiscardSmsCreateWapPush()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDiscardSameCreateWapPush:Z

    return v0
.end method

.method public static getEnableDisplayLoation()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisplayLocation:Z

    return v0
.end method

.method public static getEnableDisplayNameAndNumberonTitle()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDisplayNameAndNumberonTitle:Z

    return v0
.end method

.method public static getEnableDisplaySimIcon()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v1

    if-gt v1, v0, :cond_1

    :cond_0
    const-string v1, "CHN"

    const-string v2, "USA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableDisplayTotalCountPerThread()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisplayCntInList:Z

    return v0
.end method

.method public static getEnableDoNotFilterSpamOnRetriveMMS()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

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

.method public static getEnableDocomoAccountAsDefault()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDocomoAccountAsDefault:Z

    return v0
.end method

.method public static getEnableDraftMessageBox()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDraftMessageBox:Z

    return v0
.end method

.method public static getEnableDualMode()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

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

.method public static getEnableDualNumber4Korea()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDualNumber4Korea:Z

    return v0
.end method

.method public static getEnableDualStandBy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableDuosCGG()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableDuosCdmaGsm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableDuosGsmGsm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableEasyMode(Landroid/content/Context;)Z
    .locals 6
    .param p0    # Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_messages"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public static getEnableEcid()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableEcid:Z

    return v0
.end method

.method public static getEnableEmoji()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableEmoji:Z

    return v0
.end method

.method public static getEnableEmoticonTabAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableEmptyPopup()Z
    .locals 2

    const-string v0, "USA"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getEnableEmptySms()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableEmptySms:Z

    return v0
.end method

.method public static getEnableEms()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableEms:Z

    return v0
.end method

.method public static getEnableEurKrDecoding()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableEurKrDecoding:Z

    return v0
.end method

.method public static getEnableFestivalEffect()Z
    .locals 3

    sget-object v0, Lcom/android/mms/MmsConfig;->mFloastingFeature:Lcom/samsung/android/feature/FloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FESTIVAL_EFFECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnableFestivalEffectJpn()Z
    .locals 3

    const-string v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEnableFestivalUX4Chn()Z
    .locals 2

    const-string v0, "CHN"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFestivalEffectVersion()Ljava/lang/String;

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

.method public static getEnableFindLostPhoneOn()Z
    .locals 7

    const/4 v3, 0x0

    const-string v0, "/efs/sktdm_mem/lawlock.txt"

    const-string v4, "SKT"

    const-string v5, "TMO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/sktdm_mem/lawlock.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string v4, "ON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "Mms/MmsConfig"

    const-string v4, "getEnableFindLostPhoneOn() is true"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :cond_0
    return v3

    :catch_0
    move-exception v2

    const-string v1, "OFF"

    goto :goto_0
.end method

.method public static getEnableFingerprintService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableFlickThreadView()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableFlickThreadView:Z

    return v0
.end method

.method public static getEnableFolderView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableFontSize()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableFontSize:Z

    return v0
.end method

.method public static getEnableFontSizeByVolumeKey()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableFontSizeByVolumeKey:Z

    return v0
.end method

.method public static getEnableForceConnectMms()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsMobiledataOff()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableFullSizeNewComposer()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

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

.method public static getEnableFwEmoji()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableGlanceView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableGridViewOnAddAttachmentMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableGridViewOnAddTextMenu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableGroupMessage()Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v1, Lcom/android/mms/MmsConfig;->sEnableGroupMms:Z

    goto :goto_0
.end method

.method public static getEnableGroupMessageBanner()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "pref_key_mms_group_mms"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0
.end method

.method public static getEnableIPME()Z
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableIS41Email()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableIS41Email:Z

    return v0
.end method

.method public static getEnableInfiniteDispMMSProgressbar()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableInfiniteDispMMSProgressbar:Z

    return v0
.end method

.method public static getEnableKTSMSReadConfirm()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableKTSMSReadConfirm:Z

    return v0
.end method

.method public static getEnableKoreanSpecialCharacter()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableKoreanSpecialCharacter:Z

    return v0
.end method

.method public static getEnableKsc5601()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableKsc5601:Z

    return v0
.end method

.method public static getEnableLCDOn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableLguHttpHeader()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLguHttpHeader:Z

    return v0
.end method

.method public static getEnableLimitMmsBodyByte()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLimitMmsBodyByte:Z

    return v0
.end method

.method public static getEnableLimitOnMmsSubjectByByte()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    return v0
.end method

.method public static getEnableLinkDAUSA()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLinkDAUSA:Z

    return v0
.end method

.method public static getEnableLinkDAUSA2()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLinkDAUSA2:Z

    return v0
.end method

.method public static getEnableLmsReassembleTimeoutsCTC()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableLmsReassembleTimeoutsCTC:Z

    return v0
.end method

.method public static getEnableLocation()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLocation:Z

    return v0
.end method

.method public static getEnableLockedMsgManager()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLockedMsgManager:Z

    return v0
.end method

.method public static getEnableLogs()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableLogs:Z

    return v0
.end method

.method public static getEnableMMSStatusUIForCHN()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMMSStatusUIForCHN:Z

    return v0
.end method

.method public static getEnableMMSThroughWifi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableMMSThroughWimax()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableManageSimMessages()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableManageSimMessages:Z

    return v0
.end method

.method public static getEnableMarkAsReadOption()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

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

.method public static getEnableMaxQuality()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMaxQuality:Z

    return v0
.end method

.method public static getEnableMediaDuration()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMediaDuration:Z

    return v0
.end method

.method public static getEnableMenuInsertSenderInfoWhenFwdMsg()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMenuInsertSenderInfoWhenFwdMsg:Z

    return v0
.end method

.method public static getEnableMenuMmsServerAddr()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMenuMmsServerAddr:Z

    return v0
.end method

.method public static getEnableMenuSetAsRingtone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableMessageAutoView()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMessageAutoView:Z

    return v0
.end method

.method public static getEnableMessageDbBackupKeystring()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMessageDbBackupKeystring:Z

    return v0
.end method

.method public static getEnableMessageMaxTextLengthInAllSlides()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMessageMaxTextLengthInAllSlides:Z

    return v0
.end method

.method public static getEnableMessageReminderAlert()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMessageReminderAlert:Z

    return v0
.end method

.method public static getEnableMessageShare()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableMessageSupportMultiImageAttach()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableMmsAllPageBubble()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableMmsAutoDownload4Spam()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsAutoDownload4Spam:Z

    return v0
.end method

.method public static getEnableMmsCreationMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsCreationMode:Z

    return v0
.end method

.method public static getEnableMmsDeliveryTime()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsDeliveryTime:Z

    return v0
.end method

.method public static getEnableMmsDetailVzw()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsDetailVzw:Z

    return v0
.end method

.method public static getEnableMmsExpiryDate()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsExpiryDate:Z

    return v0
.end method

.method public static getEnableMmsMobiledataOff()Z
    .locals 6

    const-string v3, "Mms/MmsConfig"

    const-string v4, "checkForceMMSConfig"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMmsMobiledataOff:Z

    if-nez v3, :cond_1

    const-string v3, ""

    sget-object v4, Lcom/android/mms/MmsConfig;->sEnableMmsDataOffNumeric:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mms/MmsConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForceMMSConfig operator numeric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Mms/MmsConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForceMMSConfig feature value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/mms/MmsConfig;->sEnableMmsDataOffNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/mms/MmsConfig;->sEnableMmsDataOffNumeric:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Mms/MmsConfig"

    const-string v4, "checkForceMMSConfig true"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMmsMobiledataOff:Z

    goto :goto_1
.end method

.method public static getEnableMmsParamsForChn()Z
    .locals 2

    const-string v0, "CHN"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getEnableMmsPriority()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsPriority:Z

    return v0
.end method

.method public static getEnableMmsReadReportPdu()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSendMmsReadReportPdu:Z

    return v0
.end method

.method public static getEnableMmsRetryInNoSvc()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

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

.method public static getEnableMmsSendingForChn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableMmsServerTime()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsServerTime:Z

    return v0
.end method

.method public static getEnableMmsSubjectConcept4Korea()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsSubjectConcept4Korea:Z

    return v0
.end method

.method public static getEnableMmsTransactionCustomize4Korea()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsTransactionCustomize4Korea:Z

    return v0
.end method

.method public static getEnableMmsUserInputApn()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsUserInputApn:Z

    return v0
.end method

.method public static getEnableMultiCopyToSIM()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMultiCopyToSIM:Z

    return v0
.end method

.method public static getEnableMultiDraftMsgBox()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMultiDraftMsgBox:Z

    return v0
.end method

.method public static getEnableMultiLockMenu()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMultiLockMenu:Z

    return v0
.end method

.method public static getEnableMultiSim()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableMultiwindow()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMultiwindow:Z

    return v0
.end method

.method public static getEnableNGMGroupMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableNetworkWarningDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableNewFontSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableNotificationBacklight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableNotificationBoradcastReceivedMsg()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableNotificationBoradcastReceivedMsg:Z

    return v0
.end method

.method public static getEnableNotificationPopup()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMessageNotificationPopup:Z

    return v0
.end method

.method public static getEnableOma13NameEncoding()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnablePhoneAndServerTime()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePhoneAndServerTime:Z

    return v0
.end method

.method public static getEnablePhoneNumberFormattingImprove()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePhoneNumberFormattingInMsg:Z

    return v0
.end method

.method public static getEnablePhoneNumberFormattingInMsg()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePhoneNumberFormattingInMsg:Z

    return v0
.end method

.method public static getEnablePickContactLimit()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePickContactLimit:Z

    return v0
.end method

.method public static getEnablePinyinSearch()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePinyinSearch:Z

    return v0
.end method

.method public static getEnablePlusButtonOnRecipient()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePlusButtonOnRecipient:Z

    return v0
.end method

.method public static getEnablePoi()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getEnablePriority()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnablePriority:Z

    return v0
.end method

.method public static getEnableRTSReject()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableRTSReject:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnableRcsScheduledMessage()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRcsScheduledMessage:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableReceivePortSMS()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableReceivePortSMS:Z

    return v0
.end method

.method public static getEnableRecordAudio()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRecordAudio:Z

    return v0
.end method

.method public static getEnableRegisterCalendar()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRegisterCalendar:Z

    return v0
.end method

.method public static getEnableRemoveEmailDialog()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableRemovingContactThumbnail()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRemovingContactThumbnailInMsgList:Z

    return v0
.end method

.method public static getEnableReplaceLabelOnRequestedStatus()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableReplaceLabelOnRequestedStatus:Z

    return v0
.end method

.method public static getEnableReplacingCarriageReturnIntoNewLine()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableReplacingCarriageReturnIntoNewLine:Z

    return v0
.end method

.method public static getEnableReplyAll()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableReplyAll:Z

    return v0
.end method

.method public static getEnableReportAsSpam()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableRequestSendNoSrv()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRequestSendNoSrv:Z

    return v0
.end method

.method public static getEnableRestrictApnExtension()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableRetrievalDuringRoaming()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRetrievalDuringRoaming:Z

    return v0
.end method

.method public static getEnableRilSmsAddressSeperator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableRilSmsSupportReplyAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableRilSmsTidMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableRoamGuard()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableRoamGuard:Z

    return v0
.end method

.method public static getEnableRoamingTimeSchemeForCHN()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sRoamingTimeSchemeForCHN:Z

    return v0
.end method

.method public static getEnableSIMMessageCountUI()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSIMMessageCountUI:Z

    return v0
.end method

.method public static getEnableSMSC()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSMSC:Z

    return v0
.end method

.method public static getEnableSMSCEditable()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSMSCEditable:Z

    return v0
.end method

.method public static getEnableSMSP()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSMSP:Z

    return v0
.end method

.method public static getEnableSMemo()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSMemo:Z

    return v0
.end method

.method public static getEnableSNote()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSNote:Z

    return v0
.end method

.method public static getEnableSOSPrefix()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSOSPrefix:Z

    return v0
.end method

.method public static getEnableSPannerLabelCaleder()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableSPlanner()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSPlanner:Z

    return v0
.end method

.method public static getEnableSSMS()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSSMS:Z

    return v0
.end method

.method public static getEnableSafeMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableSaveClassZeroMessage()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSaveClassZeroMessage:Z

    return v0
.end method

.method public static getEnableSaveRestoreSDCardMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableSaveVMessage()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSaveVMessage:Z

    return v0
.end method

.method public static getEnableScheduledMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableScrapbook()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableScrapbook:Z

    return v0
.end method

.method public static getEnableSearchExpandable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableSegmentedSms()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSegmentedSms:Z

    return v0
.end method

.method public static getEnableSentTimeInSimList()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSentTimeInSimList:Z

    return v0
.end method

.method public static getEnableServerTimeLabel()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableServerTimeLabel:Z

    return v0
.end method

.method public static getEnableServiceLoading()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableServiceLoading:Z

    return v0
.end method

.method public static getEnableSetDefaultFocusToMessageBody()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDefaultFocusToMsgBody:Z

    return v0
.end method

.method public static getEnableShowDialogBeforeChangeSmsToMmsByThreshold()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableSignature()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSignature:Z

    return v0
.end method

.method public static getEnableSinglePageSlideView()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMmsOnePageViewer:Z

    return v0
.end method

.method public static getEnableSlideshowAutoPlay()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSlideshowAutoPlay:Z

    return v0
.end method

.method public static getEnableSmsExpiryDate()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsExpiryDate:Z

    return v0
.end method

.method public static getEnableSmsForwardPrefix()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsForwardPrefix:Z

    return v0
.end method

.method public static getEnableSmsInputMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsInputMode:Z

    return v0
.end method

.method public static getEnableSmsMaxByte()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsMaxByte:Z

    return v0
.end method

.method public static getEnableSmsServerTime()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsServerTime:Z

    return v0
.end method

.method public static getEnableSmsSubject()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsSubject:Z

    return v0
.end method

.method public static getEnableSmsViewer()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsViewer:Z

    return v0
.end method

.method public static getEnableSmsViewerPinchZoom()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSmsViewerPinchZoom:Z

    return v0
.end method

.method public static getEnableSpamReport4Kor()Z
    .locals 2

    sget-object v0, Lcom/android/mms/MmsConfig;->sEnableSpamReport4Kor:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "KOR"

    sget-object v1, Lcom/android/mms/MmsConfig;->sEnableSpamReport4Kor:Ljava/lang/String;

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

.method public static getEnableSpeedDial()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSpeedDial:Z

    return v0
.end method

.method public static getEnableSplitMode()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->hasLargerThan5inchScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getEnableSplitThread()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sSplitThread:Z

    return v0
.end method

.method public static getEnableStageFlightLib()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableStageFlightLib:Z

    return v0
.end method

.method public static getEnableStrictImageResizing()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableStrictImageResizing:Z

    return v0
.end method

.method public static getEnableSubject()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSubject:Z

    return v0
.end method

.method public static getEnableSupport7StepFontSize()Z
    .locals 3

    sget-object v0, Lcom/android/mms/MmsConfig;->mFloastingFeature:Lcom/samsung/android/feature/FloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_7_STEP_FONTSIZE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEnableSupportIpCall()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableIpCall:Z

    return v0
.end method

.method public static getEnableTabAutoRetrieveSetting()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableTextTempateButton()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableTextTemplateButton:Z

    return v0
.end method

.method public static getEnableTexttemplatTMOMenu()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableTexttemplatTMOMenu:Z

    return v0
.end method

.method public static getEnableTranslatorMenu()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->checkTranslatorEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getEnableUnknownAddressToNullInDB()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableUnknownAddressToNullInDB:Z

    return v0
.end method

.method public static getEnableUseDataSwitchDialog()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataSwitchInTwochip()Z

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

.method public static getEnableVCalendar()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVCalendar:Z

    return v0
.end method

.method public static getEnableVCard()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVCard:Z

    return v0
.end method

.method public static getEnableVIPModeApplication()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVIPModeApplication:Z

    return v0
.end method

.method public static getEnableVMemo()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVMemo:Z

    return v0
.end method

.method public static getEnableVTask()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVTask:Z

    return v0
.end method

.method public static getEnableVcardView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableVibration4NotiDuringCall()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVibration4NotiDuringCall:Z

    return v0
.end method

.method public static getEnableVideoCall(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "Mms/MmsConfig"

    const-string v3, "pacakgeManger is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "KOR"

    const-string v3, "USA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.sec.feature.call_vt_support"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/mms/MmsConfig;->sEnableVoLTE:Z

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "com.sec.feature.call_vt_support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static getEnableViewByMessageType()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableViewByMessageType:Z

    return v0
.end method

.method public static getEnableViewBySimSlot()Z
    .locals 3

    const-string v1, "ro.csc.sales_code"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

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

.method public static getEnableVoLTE()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVoLTE:Z

    return v0
.end method

.method public static getEnableVoLTECallIcon()Z
    .locals 2

    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableVoLTE:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableWapPush()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableWapPush:Z

    return v0
.end method

.method public static getEnableWhiteList()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableWhiteList:Z

    return v0
.end method

.method public static getEnableWritingBuddy()Z
    .locals 2

    sget v0, Lcom/android/mms/MmsConfig;->uspLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableWvgaFontSize()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableWvgaFontSize:Z

    return v0
.end method

.method public static getEnableYellowPage()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/mms/MmsConfig;->sEnableYellowPage:Z

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    sget-object v3, Lcom/android/mms/MmsConfig;->sContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/mms/MmsConfig;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "yellowpage_callerid"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_1
    const-string v3, "Mms/MmsConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEnableYellowPage() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/mms/MmsConfig;->sEnableYellowPage:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enable yp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/mms/MmsConfig;->sEnableYellowPage:Z

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public static getFestivalEffectVersion()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/mms/MmsConfig;->mFloastingFeature:Lcom/samsung/android/feature/FloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FESTIVAL_EFFECT_VERSION"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getForwardPrefix()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sForwardPrefix:I

    return v0
.end method

.method public static getFreeMessageAdhocGroupSizeMax()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMaxFreeMessageAdhocGroupSizeMax:I

    return v0
.end method

.method public static getFreeMessageFileSizeLimit()J
    .locals 2

    sget-wide v0, Lcom/android/mms/MmsConfig;->sMaxFreeMessageSize:J

    return-wide v0
.end method

.method public static getFreeMessageFileWarnSizeLimit()J
    .locals 2

    sget-wide v0, Lcom/android/mms/MmsConfig;->sMaxFreeMessageWarnSize:J

    return-wide v0
.end method

.method public static getFreeMessageLogInStatus(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getGSMCMASEnable()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getGSMCMASEnable()Z

    move-result v0

    return v0
.end method

.method public static getGUITunningForSysPerformance()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getGalleryView4SingleImageMMSType()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/mms/MmsConfig;->sGalleryView4SingleImageMMSType:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_MMS:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->sGalleryView4SingleImageMMSType:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_ONLY_SINGLEIMAGE_TEXT_MMS:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/mms/MmsConfig;->MMS_GALLERY_VIEW_DISABLE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sHttpParams:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpParamsLine1Key()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sHttpParamsLine1Key:Ljava/lang/String;

    return-object v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    return v0
.end method

.method public static getImageResizeQualityFactorWhenAttach()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sImageResizeQualityFactorWhenAttach:I

    return v0
.end method

.method public static getInputModeForCHN()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

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

.method public static getMMSDeliveryReportsEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMMSDeliveryReports:Z

    return v0
.end method

.method public static getMMSReadReportsEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMMSReadReports:Z

    return v0
.end method

.method public static getMMSSendDeliveryReportsEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMMSSendDeliveryReports:Z

    return v0
.end method

.method public static getMaxContentsSize()I
    .locals 2

    sget v0, Lcom/android/mms/MmsConfig;->sMaxMessageSize:I

    sget v1, Lcom/android/mms/MmsConfig;->sMmsHeaderSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getMaxImageHeight()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    return v0
.end method

.method public static getMaxImageHeightRestrictedMode()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMaxImageHeightRestrictedMode:I

    return v0
.end method

.method public static getMaxImageWidth()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    return v0
.end method

.method public static getMaxImageWidthRestrictedMode()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMaxImageWidthRestrictedMode:I

    return v0
.end method

.method public static getMaxMessageCountPerThread()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMaxMessageCountPerThread:I

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMaxMessageSize:I

    return v0
.end method

.method public static getMaxMessageSizeForResizing()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMaxMessageSizeForResizing:I

    return v0
.end method

.method public static getMaxRawAttachmentCount()I
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/mms/MmsConfig;->sMaxRawAttachmentCount:I

    goto :goto_0
.end method

.method public static getMaxRawAttachmentCountForContact()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMaxRawAttachmentCountForContact:I

    return v0
.end method

.method public static getMaxRecipientLength()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public static getMaxSizeScaleForPendingMmsAllowed()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMaxSizeScaleForPendingMmsAllowed:I

    return v0
.end method

.method public static getMaxSlideCount()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public static getMaxSubjectLength()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public static getMaxTextLimit()I
    .locals 2

    sget v0, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7d0

    goto :goto_0
.end method

.method public static getMaximumEmailAddressLength()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public static getMessageConfigImeiTracker()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sMessageConfigImeiTracker:Ljava/lang/String;

    return-object v0
.end method

.method public static getMinMessageCountPerThread()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMinMessageCountPerThread:I

    return v0
.end method

.method public static getMinRecipientLength()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    return v0
.end method

.method public static getMinimumSlideElementDuration()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMinimumSlideElementDuration:I

    return v0
.end method

.method public static getMmsEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMmsEnabled:Z

    return v0
.end method

.method public static getMmsMaxRecipient()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public static getMmsModeCaptureVideoMaxSize()I
    .locals 2

    sget v0, Lcom/android/mms/MmsConfig;->sMmsModeCaptureVideoMaxSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->sMmsModeCaptureVideoMaxSize:I

    :cond_0
    sget v0, Lcom/android/mms/MmsConfig;->sMmsModeCaptureVideoMaxSize:I

    return v0
.end method

.method public static getMmsServerAddressEditable()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMmsServerAddressEditable:Z

    return v0
.end method

.method public static getMmsServerPortEditable()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMmsServerPortEditable:Z

    return v0
.end method

.method public static getMmsUaUapAutoCreate()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    return-object v0
.end method

.method public static getMmsVersion()F
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sMmsVersion:F

    return v0
.end method

.method public static getMmsWidgetEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getMoveReadNDeliverySettingToComposer()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sMoveReadNDeliverySettingToComposer:Z

    return v0
.end method

.method public static getMultipartSmsEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableMultipartSMS:Z

    return v0
.end method

.method public static getNotifyWapMMSC()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sNotifyWapMMSC:Z

    return v0
.end method

.method public static getOperatorNumeric()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public static getOptionalFieldAttendance()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sOptionalFieldAttendance:Z

    return v0
.end method

.method public static getPageCountForLMSNoti()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sPageCountForLMSNoti:I

    return v0
.end method

.method public static getPreloadTemplateFromCSC()[Ljava/lang/String;
    .locals 4

    sget-object v2, Lcom/android/mms/MmsConfig;->templateArrayValue:[Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/transaction/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/CscParser;->getInstance(Ljava/lang/String;)Lcom/android/mms/transaction/CscParser;

    move-result-object v1

    const-string v2, "Settings.Messages.SMS"

    const-string v3, "TextTemplate"

    invoke-static {v1, v2, v3}, Lcom/android/mms/MmsConfig;->getTagListsToArray(Lcom/android/mms/transaction/CscParser;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->templateArrayValue:[Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/android/mms/MmsConfig;->templateArrayValue:[Ljava/lang/String;

    return-object v2
.end method

.method public static getProxyAuth()Ljava/lang/String;
    .locals 1

    const-string v0, "Proxy-Authorization"

    return-object v0
.end method

.method public static getQualityArrayValue()[I
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sDefaultRetryQuality:[I

    return-object v0
.end method

.method public static getRecipientLimit()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public static getRegisteredNetwork()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const-string v3, "gsm.network.type"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v5

    const-string v3, "Mms/MmsConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRegisteredNetwork() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getRemoveFileNameSpace()Z
    .locals 2

    const-string v0, "CTC"

    const-string v1, "TMO"

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

.method public static getRemoveInternationalTelNumPrefix()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sRemoveInternationalTelNumPrefix:Z

    return v0
.end method

.method public static getSMSDeliveryReportsEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSMSDeliveryReports:Z

    return v0
.end method

.method public static getSSMSOperator()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sSSMSOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static getSavePduFiles()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sSavePdu:Z

    return v0
.end method

.method public static getSetFontSizeByVolumeKey()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sSetFontSizeByVolumeKey:Z

    return v0
.end method

.method public static getSlideDurationEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableSlideDuration:Z

    return v0
.end method

.method public static getSmsDiscardPrefix()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sSmsDiscardPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmsMaxByte()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sSmsMaxByte:I

    return v0
.end method

.method public static getSmsToMmsByThreshold()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sSmsToMmsByThreshold:Z

    return v0
.end method

.method public static getSmsToMmsTextThreshold()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public static getSupportFingerAirView()Z
    .locals 3

    sget-object v0, Lcom/android/mms/MmsConfig;->mFloastingFeature:Lcom/samsung/android/feature/FloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSupportMotionPickUpToCallOut()Z
    .locals 3

    sget-object v0, Lcom/android/mms/MmsConfig;->mFloastingFeature:Lcom/samsung/android/feature/FloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSupportSPenHoveringNDetachment()Z
    .locals 3

    sget-object v0, Lcom/android/mms/MmsConfig;->mFloastingFeature:Lcom/samsung/android/feature/FloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTWVersion()F
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sTWVersion:F

    return v0
.end method

.method private static getTagListsToArray(Lcom/android/mms/transaction/CscParser;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0    # Lcom/android/mms/transaction/CscParser;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-object v4

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/transaction/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getTetheringMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sTetheringmode:Z

    return v0
.end method

.method public static getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    sget v1, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getPreloadTemplateFromCSC()[Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget v1, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTransIdEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sTransIdEnabled:Z

    return v0
.end method

.method public static getTransactionLoggable()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sTransactionLoggable:Z

    goto :goto_0
.end method

.method public static getTransactionTimeout()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    return v0
.end method

.method public static getUaProfTagName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sUaProfTagName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getUseAnotherCMASApp()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getUseAnotherCMASApp()Z

    move-result v0

    return v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserNai()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sUserNai:Ljava/lang/String;

    return-object v0
.end method

.method public static getUspLevel()I
    .locals 1

    sget v0, Lcom/android/mms/MmsConfig;->uspLevel:I

    return v0
.end method

.method public static getWidgetType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static getmCmasMessageTMOMenuTextFeature()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v0

    return v0
.end method

.method public static getmEnableAddContactIn1stDepthComposerOption()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableAddContactIn1stDepthComposerOption:Z

    return v0
.end method

.method public static getmEnableDoCoMoDeliveryReportFormat()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableDoCoMoDeliveryReportFormat:Z

    return v0
.end method

.method public static has2ndScreen(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cocktailbar"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static hasLargerThan5inchScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    const-string v0, "Mms/MmsConfig"

    const-string v1, "MmsConfig.init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/MmsConfig;->pref_DebugContext:Landroid/content/SharedPreferences;

    sput-object p0, Lcom/android/mms/MmsConfig;->sContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadMmsSettings(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadCscSettings(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadChameleonFromPreference(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadFromPreference(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadProvisioning(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadOtherSettings(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->updateComponentEnabledState(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->setCountryDetector()V

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->checkContextProviderForAlways(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->sIsContextProviderForAlways:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->uspLevel:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->sEnableWvgaFontSize:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFwEmoji()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmojiSupportMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/EmoticonList;->ensureEmojiPattern()V

    :cond_0
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->checkInsatalledFreeMessage(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->sInstalledFreeMessage:Z

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->checkInsatalledShopAgent(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/MmsConfig;->sInstalledShopAgent:Z

    const-string v0, "Mms/MmsConfig"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isATTCMASFeatureEnabled()Z
    .locals 2

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAliasEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sAliasEnabled:Z

    return v0
.end method

.method public static isAuthEasySignUp(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_is_auth_easy_signup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isAuthFreeMessage(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_is_auth_free_message"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isBlackBirdFeatureEnabled()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/android/mms/MmsConfig;->RCS_STATE_VALUE:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/mms/MmsConfig;->RCS_STATE_VALUE:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/mms/MmsConfig;->RCS_STATE_VALUE:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCDMANetworkRegistered()Z
    .locals 3

    const-string v1, "persist.radio.calldefault.simid"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered(I)Z

    move-result v1

    return v1
.end method

.method public static isCDMANetworkRegistered(I)Z
    .locals 5
    .param p0    # I

    invoke-static {p0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "Mms/MmsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get MultiSIM Telephonymanager from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isCmasTFGChileSIM()Z
    .locals 3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "730"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isContextProviderForAlways(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sIsContextProviderForAlways:Z

    return v0
.end method

.method public static isDisableEasyModeForComposer()Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static isDisableOffineDisplay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isDisableSaveRingtone()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sDisableSaveRingtoneMenu:Z

    return v0
.end method

.method public static isDisabledLeftAttachButtonUI()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    sget-boolean v1, Lcom/android/mms/MmsConfig;->sDisableLeftAttachButtonUI:Z

    goto :goto_0
.end method

.method public static isDisplayCallIconInActionBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDisplayRecipientVzwLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDisplaySendButtonToText()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDsdsModelOnlyRoaming()Z
    .locals 3

    const-string v1, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM-N9108W"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-N9109W"

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

.method public static isEmergencyMode()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isUltraPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    sget v2, Lcom/android/mms/MmsConfig;->sEmergencyMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->updateEmergencyMode()V

    :cond_1
    sget v2, Lcom/android/mms/MmsConfig;->sEmergencyMode:I

    if-ne v2, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static isEnableKTShowMe()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigVolteUserMsg"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "show_me"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEnabledIndividualRingtone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isEnabledUnpackMode()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFocusToComposerField()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isFolderModel(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFreeMessageEnabled()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    sget-boolean v1, Lcom/android/mms/MmsConfig;->sEnableFreeMessage:Z

    goto :goto_0

    :pswitch_2
    sget-boolean v1, Lcom/android/mms/MmsConfig;->sInstalledFreeMessage:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static isFreeMessageServiceEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isAuthEasySignUp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isAuthFreeMessage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKMRGUI()Z
    .locals 3

    const-string v1, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM-G900T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-A5000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-A5009"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-A500Y"

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

.method public static isKORCMASFeatureEnabled()Z
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKORRTSRejectEnabled()Z
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static isLandscapeBaseModel()Z
    .locals 2

    const-string v0, "EK-GC100"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMms2gAutodownloadAfterCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isNoteModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static isPhoneAndServerTime(Ljava/lang/String;Z)Z
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const-string v0, "phone,server"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0
.end method

.method private static isServerTime(Ljava/lang/String;Z)Z
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const-string v0, "phone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "server"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0
.end method

.method public static isStickerEnabled()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    sget-boolean v1, Lcom/android/mms/MmsConfig;->sEnableSticker:Z

    goto :goto_0

    :pswitch_2
    sget-boolean v1, Lcom/android/mms/MmsConfig;->sInstalledShopAgent:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportBubbleViewPinchZoom()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportContextAwareness()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->DEBUG_getBlockContextAwareness()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportDormantMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportFlashNotification()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportHideMmsRoamingAutoDownloadOption()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->sSupportHideMmsRoamingAutoDownloadOption:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportHoveringUI()Z
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const-string v1, "com.sec.feature.hovering_ui"

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportOperatorMsgTone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportQwertKeypad()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/mms/MmsConfig;->sSupportQwertKeypad:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSPen()Z
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTMOCMASFeatureEnabled()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v1}, Lcom/android/mms/cmas/CMASVender;->getCMASProvider()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUltraPowerSavingMode()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ultra_powersaving_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Mms/MmsConfig"

    const-string v3, "fail to read UltraPowerSavingMode"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method public static isUnknownURLlink()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/MmsConfig;->sEnableUnknownURLlink:Z

    return v0
.end method

.method public static isWhiteEditBG()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isWhiteTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static loadChameleonFromPreference(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    sget-boolean v2, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    const-string v2, "Mms/MmsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLocale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "en"

    sget-object v3, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "pref_key_chameleon_text_template_en"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Mms/MmsConfig"

    const-string v3, "loadFromChameleon en key"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pref_key_chameleon_text_template_en"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->SetChameleonTextTemplate(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "es"

    sget-object v3, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "pref_key_chameleon_text_template_es"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Mms/MmsConfig"

    const-string v3, "loadFromChameleon es key"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pref_key_chameleon_text_template_es"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->SetChameleonTextTemplate(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "vi"

    sget-object v3, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "pref_key_chameleon_text_template_vi"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Mms/MmsConfig"

    const-string v3, "loadFromChameleon vi key"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pref_key_chameleon_text_template_vi"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->SetChameleonTextTemplate(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "ko"

    sget-object v3, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "pref_key_chameleon_text_template_ko"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Mms/MmsConfig"

    const-string v3, "loadFromChameleon ko key"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pref_key_chameleon_text_template_ko"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->SetChameleonTextTemplate(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "zh"

    sget-object v3, Lcom/android/mms/MmsConfig;->sLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pref_key_chameleon_text_template_zh"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Mms/MmsConfig"

    const-string v3, "loadFromChameleon zh key"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pref_key_chameleon_text_template_zh"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->SetChameleonTextTemplate(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static loadCscSettings(Landroid/content/Context;)V
    .locals 17
    .param p0    # Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v14, "CscFeature_Common_UseChameleon"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "pref_key_init_csc"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_19

    const-string v14, "Mms/MmsConfig"

    const-string v15, "before update"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v14, Lcom/android/mms/MmsConfig;->sEnableChameleon:Z

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/csc/CscLoader;->update(Landroid/content/Context;Z)Z

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v14, "pref_key_init_csc"

    const/4 v15, 0x1

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledUnpackMode()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->dataCreateUnpack()V

    :cond_0
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->setFreeMessageEnabled(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->setStickerEnabled(Landroid/content/Context;)V

    const-string v14, "CscFeature_Message_EnableLocalSymbolTable"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableEmoji:Z

    const-string v14, "CscFeature_Message_CustomDeliveryReportFormat"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDoCoMoDeliveryReportFormat:Z

    const-string v14, "CscFeature_Message_EnableReplyAll"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableReplyAll:Z

    const-string v14, "CscFeature_Message_EnableSendingEmptySms"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableEmptySms:Z

    const-string v14, "CscFeature_Message_EnableSmsSubject"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSmsSubject:Z

    const-string v14, "CscFeature_Message_EnableSaveVMessage"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSaveVMessage:Z

    const-string v14, "CscFeature_Message_EnableTextTemplateButton"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableTextTemplateButton:Z

    const-string v14, "CscFeature_Message_EmbeddedTextTemplateType"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1a

    const-string v8, ""

    :goto_1
    const-string v14, "generic"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    const/4 v14, 0x1

    sput v14, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    :goto_2
    const-string v14, "CscFeature_Message_EnableMsgTypeIndicationDuringComposing"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableComposeTypeUI:Z

    const-string v14, "CscFeature_Message_AddSendOptionInComposer"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sAddSendOptionInComposer:Z

    const-string v14, "CscFeature_Message_EnableMultiLockMenu"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMultiLockMenu:Z

    const-string v14, "CscFeature_Message_EnableExtendSlideTimeToMediaDuration"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMediaDuration:Z

    const-string v14, "CscFeature_Message_DisableSmsToMmsConversionByTextInput"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1e

    const/4 v14, 0x1

    :goto_3
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sSmsToMmsByThreshold:Z

    const-string v14, "CscFeature_Message_DisableMmsSlideshowAutoPlay"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1f

    const/4 v14, 0x1

    :goto_4
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSlideshowAutoPlay:Z

    const-string v14, "CscFeature_Message_DisableOptionAttachVCard"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_20

    const/4 v14, 0x1

    :goto_5
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableVCard:Z

    const-string v14, "CscFeature_Message_DisableOptionAttachVMemo"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_21

    const/4 v14, 0x1

    :goto_6
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableVMemo:Z

    const-string v14, "CscFeature_Message_DisableOptionAttachVCalendar"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_22

    const/4 v14, 0x1

    :goto_7
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSPlanner:Z

    const-string v14, "CscFeature_Message_DisableOptionAttachLocation"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_23

    const/4 v14, 0x1

    :goto_8
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableLocation:Z

    const-string v14, "CscFeature_Message_DisableOptionRecordAudio"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_24

    const/4 v14, 0x1

    :goto_9
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableRecordAudio:Z

    const-string v14, "CscFeature_Message_DisableMenuCBMessage"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_25

    const/4 v14, 0x1

    :goto_a
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableCBMessage:Z

    const-string v14, "CscFeature_Message_DisableEnterKeyInput"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sDisableEnterKeyInput:Z

    const-string v14, "CscFeature_Message_EnableUnifiedMmsRetrieveMenu"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_26

    const/4 v14, 0x1

    :goto_b
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableRetrievalDuringRoaming:Z

    const-string v14, "CscFeature_Message_DisableMenuWapPush"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_27

    const/4 v14, 0x1

    :goto_c
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableWapPush:Z

    const-string v14, "CscFeature_Message_DisableMenuWapPushServiceLoading"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_28

    const/4 v14, 0x1

    :goto_d
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableServiceLoading:Z

    const-string v14, "CscFeature_Message_DisableMenuSmsInputMode"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_29

    const/4 v14, 0x1

    :goto_e
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSmsInputMode:Z

    const-string v14, "CscFeature_Message_DisableMenuSMSC"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2a

    const/4 v14, 0x1

    :goto_f
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSMSC:Z

    const-string v14, "CscFeature_Message_DisableSmscEditable"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2b

    const/4 v14, 0x1

    :goto_10
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSMSCEditable:Z

    const-string v14, "CscFeature_Message_DisableMenuMmsCreationMode"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2c

    const/4 v14, 0x1

    :goto_11
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsCreationMode:Z

    const-string v14, "CscFeature_Message_ConfigImeiTracker"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sMessageConfigImeiTracker:Ljava/lang/String;

    const-string v14, "CscFeature_Message_DisableMmsSubject"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2d

    const/4 v14, 0x1

    :goto_12
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSubject:Z

    const-string v14, "CscFeature_Message_DisableMenuSIMMessages"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2e

    const/4 v14, 0x1

    :goto_13
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableManageSimMessages:Z

    const-string v14, "CscFeature_Message_DisableCopyToSim"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2f

    const/4 v14, 0x1

    :goto_14
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableCopyToSim:Z

    const-string v14, "CscFeature_Message_DisableMenuCBChannel"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_30

    const/4 v14, 0x1

    :goto_15
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableCBChannel:Z

    const-string v14, "CscFeature_Message_DisableSaveClassZeroMessage"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_31

    const/4 v14, 0x1

    :goto_16
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSaveClassZeroMessage:Z

    const-string v14, "CscFeature_Message_EnableMMSReadreportV10"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_32

    const/4 v14, 0x1

    :goto_17
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSendMmsReadReportPdu:Z

    const-string v14, "CscFeature_Message_DisableCBNotifications"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_33

    const/4 v14, 0x1

    :goto_18
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableCBNotifications:Z

    const-string v14, "CscFeature_Message_DisableSavingInbox4CbChannel"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sDisableSavingInbox4CBChannel:Ljava/lang/String;

    sget-object v14, Lcom/android/mms/MmsConfig;->sDisableSavingInbox4CBChannel:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    sput-object v14, Lcom/android/mms/MmsConfig;->sDisableSavingInbox4CBChannel:Ljava/lang/String;

    :cond_1
    const-string v14, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_34

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v14

    sput v14, Lcom/android/mms/MmsConfig;->sContactMatchCliDigit:I

    :cond_2
    :goto_19
    const-string v14, "CscFeature_Message_EnableMenuInsertSenderInfoWhenFwdMsg"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMenuInsertSenderInfoWhenFwdMsg:Z

    const-string v14, "CscFeature_Message_DisableLogs"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_35

    const/4 v14, 0x1

    :goto_1a
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableLogs:Z

    const-string v14, "CscFeature_Message_DisableMMS"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_36

    const/4 v14, 0x1

    :goto_1b
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sMmsEnabled:Z

    const/4 v12, -0x1

    const-string v14, "CscFeature_Message_MinSlideDuration"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_3

    sput v12, Lcom/android/mms/MmsConfig;->sMinimumSlideElementDuration:I

    :cond_3
    const-string v14, "CscFeature_Message_DisableMenuRequestMmsReadReport"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_37

    const/4 v14, 0x1

    :goto_1c
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMMSReadReports:Z

    const-string v14, "CscFeature_Message_DisableMenuSmsDeliveryReports"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_38

    const/4 v14, 0x1

    :goto_1d
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSMSDeliveryReports:Z

    const-string v14, "CscFeature_Message_DisableMenuRequestMmsDeliveryReport"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_39

    const/4 v14, 0x1

    :goto_1e
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMMSDeliveryReports:Z

    const-string v14, "CscFeature_Message_EnableMenuSendMmsDeliveryReport"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMMSSendDeliveryReports:Z

    const-string v14, "CscFeature_Message_ReplaceLabel4RetreivedMsg"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableServerTimeLabel:Z

    const-string v14, "CscFeature_Message_DisplaySmsTimeAs"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x0

    invoke-static {v6, v14}, Lcom/android/mms/MmsConfig;->isPhoneAndServerTime(Ljava/lang/String;Z)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnablePhoneAndServerTime:Z

    sget-boolean v14, Lcom/android/mms/MmsConfig;->sEnablePhoneAndServerTime:Z

    if-nez v14, :cond_4

    const/4 v14, 0x0

    invoke-static {v6, v14}, Lcom/android/mms/MmsConfig;->isServerTime(Ljava/lang/String;Z)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSmsServerTime:Z

    const-string v14, "Mms/MmsConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sEnableSmsServerTime="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/mms/MmsConfig;->sEnableSmsServerTime:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v14, "CscFeature_Message_DisplayMmsTimeAs"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x1

    invoke-static {v5, v14}, Lcom/android/mms/MmsConfig;->isServerTime(Ljava/lang/String;Z)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsServerTime:Z

    const-string v14, "Mms/MmsConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sEnableMmsServerTime="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/mms/MmsConfig;->sEnableMmsServerTime:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "CscFeature_Message_SetDefaultFocusToMessageBody"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDefaultFocusToMsgBody:Z

    const-string v14, "CscFeature_Message_KeepSmilPlayerToolBar"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableInfiniteDispMMSProgressbar:Z

    const-string v14, "CscFeature_Message_EnableSmsCallbackNumber"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableCallbackNumber:Z

    const-string v14, "CscFeature_Message_EnableMessagePriorityDuringComposing"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnablePriority:Z

    const-string v14, "CscFeature_Message_EnableRoamGuard"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableRoamGuard:Z

    const-string v14, "CscFeature_Message_SmsMaxByte"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcom/android/mms/MmsConfig;->sSmsMaxByte:I

    sget v14, Lcom/android/mms/MmsConfig;->sSmsMaxByte:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_5

    const/16 v14, 0x8c

    sput v14, Lcom/android/mms/MmsConfig;->sSmsMaxByte:I

    :cond_5
    const-string v14, "CscFeature_Message_EnableSmsKsc5601Encoding"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableKsc5601:Z

    const-string v14, "CscFeature_Message_MMSMaxCharPerSlide"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    sget v14, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_6

    const/16 v14, 0x7d0

    sput v14, Lcom/android/mms/MmsConfig;->sMaxTextLength:I

    :cond_6
    const-string v14, "CscFeature_Message_EnableSearchByInitialConsonant"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableChoseongSearch:Z

    const-string v14, "CscFeature_Message_ReplaceChar4UnsupportedInKsc5601"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableKoreanSpecialCharacter:Z

    const-string v14, "CscFeature_Message_EnableDetailErrorPopupWhenSending"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sEnableRTSReject:Ljava/lang/String;

    const-string v14, "CscFeature_Message_EnableHttpHeader4LGU"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableLguHttpHeader:Z

    const-string v14, "CscFeature_Message_EnablePhoneNumberFormattingInMsg"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnablePhoneNumberFormattingInMsg:Z

    const-string v14, "CscFeature_Message_EnableCbsVariation4"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sEnableCbsVariation4:Ljava/lang/String;

    const-string v14, "CscFeature_Message_EnableSpeedDial"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSpeedDial:Z

    const-string v14, "CscFeature_Message_EnableMmsUnicodeFilenameEncoding"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableAttachmentFilenameEncoding:Z

    const-string v14, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsMobiledataOff:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_ForceConnectMMSForNumeric"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sEnableMmsDataOffNumeric:Ljava/lang/String;

    const-string v14, "CscFeature_Message_EnableMultiCopyToSim"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMultiCopyToSIM:Z

    const-string v14, "CscFeature_Message_ReplaceLabelOnPendingStatusWhenNoSvc"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMMSStatusUIForCHN:Z

    const-string v14, "CscFeature_Message_EnableDisplayTotalCount4SimMsg"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSIMMessageCountUI:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "PARTIAL_BRANDED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3a

    const/4 v14, 0x3

    sput v14, Lcom/android/mms/MmsConfig;->RCS_STATE_VALUE:I

    :goto_1f
    const-string v14, "Mms/MmsConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RCS_STATE_VALUE : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/mms/MmsConfig;->RCS_STATE_VALUE:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v14, "CscFeature_Message_EnableMenuMmsExpiryDate"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsExpiryDate:Z

    const-string v14, "CscFeature_Message_EnableMenuMmsPriority"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsPriority:Z

    const-string v14, "CscFeature_Message_EnableMenuMmsDeliveryTime"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsDeliveryTime:Z

    const-string v14, "CscFeature_Message_EnableMenuMmsServerAddress"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMenuMmsServerAddr:Z

    const-string v14, "CscFeature_Message_EnableMmsUaUapAutoCreate"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    sget-object v14, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    sput-object v14, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    :cond_8
    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableBlackList:Z

    const-string v14, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableBlackListForCHN:Z

    const-string v14, "CscFeature_VoiceCall_EnableSeparateCallReject"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableBlackListSeperateCallReject:Z

    const-string v14, "CscFeature_Message_DiscardWapPush4SameTimeStamp"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDiscardSameCreateWapPush:Z

    const-string v14, "CscFeature_Message_EnableSmsForwardPrefix"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSmsForwardPrefix:Z

    const-string v14, "CscFeature_Message_EnableMenuSmsExpiryDate"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSmsExpiryDate:Z

    const-string v14, "CscFeature_Message_EnableDSAC"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDSAC:Z

    const-string v14, "CscFeature_Message_EnableSMSPcheckWhenSendSMS"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSMSP:Z

    const-string v14, "CscFeature_Message_DisableContactThumbnailInMsgList"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableRemovingContactThumbnailInMsgList:Z

    const-string v14, "CscFeature_Message_EnableAllContextMenuInMsgViewer"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableAllContextMenuInMsgViewer:Z

    const-string v14, "CscFeature_Message_EnableDbBackupKeystring"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMessageDbBackupKeystring:Z

    const-string v14, "CscFeature_Message_EnableNotificationBroadcastReceivedMessage"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableNotificationBoradcastReceivedMsg:Z

    const-string v14, "CscFeature_Message_EnableMessageSentTimeInSimList"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSentTimeInSimList:Z

    const-string v14, "CscFeature_Message_DiscardSpecificPortSms"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3c

    const/4 v14, 0x1

    :goto_20
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableReceivePortSMS:Z

    const-string v14, "Mms/MmsConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mEnableReceivePortSMS="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/mms/MmsConfig;->sEnableReceivePortSMS:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "CscFeature_Message_SmsDiscardPrefix"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sSmsDiscardPrefix:Ljava/lang/String;

    sget-object v14, Lcom/android/mms/MmsConfig;->sSmsDiscardPrefix:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    sput-object v14, Lcom/android/mms/MmsConfig;->sSmsDiscardPrefix:Ljava/lang/String;

    :cond_9
    const-string v14, "CscFeature_Message_UseAddrWithinMMSWhenSendACK"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sNotifyWapMMSC:Z

    const-string v14, "CscFeature_Message_CreateNullDB4EmptyOriginator"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableUnknownAddressToNullInDB:Z

    const-string v14, "CscFeature_Message_EnableMmsErrorCodeInDetailView"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsDetailVzw:Z

    const-string v14, "CscFeature_Message_MinRecipientLengthAs"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    const-string v14, "CscFeature_Message_MaxRecipientLengthAs"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v14

    const/16 v14, 0x3e8

    sput v14, Lcom/android/mms/MmsConfig;->sMaxRecipientLength:I

    sget v14, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3d

    const/4 v14, 0x3

    :goto_21
    sput v14, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    const-string v14, "CscFeature_Message_EnableFolderView"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableFolderView:Z

    const-string v14, "CscFeature_Message_EnableMmsOnePageViewer"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsOnePageViewer:Z

    const-string v14, "CscFeature_Message_EnableCheckFDNContactWhenMMSSend"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableCheckFDNContactWhenMMSSend:Z

    const-string v14, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableVIPModeApplication:Z

    sget-boolean v14, Lcom/android/mms/MmsConfig;->sEnableVIPModeApplication:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableBlackList:Z

    :cond_a
    const-string v14, "CscFeature_Message_HookMobileTrackerPrefix2SosMsg"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSOSPrefix:Z

    const-string v14, "CscFeature_Message_EnableMessageMaxTextLengthInAllSlides"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMessageMaxTextLengthInAllSlides:Z

    const-string v14, "CscFeature_Message_DisablePlusInputInAddressField"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sDisableAddressPlusEdit:Z

    const-string v14, "CscFeature_Message_PositionTextTemplateMenu"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableTexttemplatTMOMenu:Z

    const-string v14, "CscFeature_Message_EnableAlias"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sAliasEnabled:Z

    const-string v14, "CscFeature_Message_EnableLimitOnMmsSubject"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/MmsConfig;->setEnalbeLimitOnMmsSubject(Ljava/lang/String;)V

    const-string v14, "CscFeature_Message_EnableSegmentedSMS"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSegmentedSms:Z

    const-string v14, "CscFeature_Message_ReplaceLabelOnRequestedStatus"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableReplaceLabelOnRequestedStatus:Z

    const-string v14, "CscFeature_Message_EnableAnonymousThread"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableAnonymousThread:Z

    const-string v14, "CscFeature_Message_EnableMmsAutoDownload4Spam"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsAutoDownload4Spam:Z

    const-string v14, "CscFeature_Message_EnableAddContactIn1stDepthComposerOption"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableAddContactIn1stDepthComposerOption:Z

    const-string v14, "CscFeature_Message_AddLogsToRecipientSearchList"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sAddLogsToRecipientSearchList:Z

    const-string v14, "CscFeature_Common_Vibration4NotiDuringCall"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableVibration4NotiDuringCall:Z

    const-string v14, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDocomoAccountAsDefault:Z

    const-string v14, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sContactReplacePackageAs:Ljava/lang/String;

    const-string v14, "CscFeature_Message_CheckTelNumAreaCode"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableCheckNumAreaCode:Z

    const-string v14, "CscFeature_Message_GalleryView4SingleImageMms"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sGalleryView4SingleImageMMSType:Ljava/lang/String;

    const-string v14, "CscFeature_Message_DisableDeleteButtonOnActionBar"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3e

    const/4 v14, 0x1

    :goto_22
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDeleteButtonOnActionBar:Z

    const-string v14, "CscFeature_Message_ImageResizeQualityFactorWhenAttach"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/mms/MmsConfig;->parseImageResizeQuality(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcom/android/mms/MmsConfig;->sImageResizeQualityFactorWhenAttach:I

    const-string v14, "CscFeature_Message_LinkDAUSA2"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableLinkDAUSA2:Z

    const-string v14, "CscFeature_Message_ConfigEmojiComposing"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v14, "onlymms"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3f

    const/4 v14, 0x1

    sput v14, Lcom/android/mms/MmsConfig;->sEmojiSupportType:I

    :cond_b
    :goto_23
    const-string v14, "ReassembleTimeout"

    const-string v15, "CscFeature_RIL_DisplayPolicyPartialLongSms"

    invoke-virtual {v3, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->mEnableLmsReassembleTimeoutsCTC:Z

    const-string v14, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableIpCall:Z

    const-string v14, "CscFeature_Message_CMASOperator"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v14, "us-vzw"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_40

    new-instance v14, Lcom/android/mms/cmas/CMASVenderVZW;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderVZW;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    :goto_24
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasOrderSetting()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/mms/MmsConfig;->setCmasConversationListQuery(Ljava/lang/String;)V

    const-string v14, "CscFeature_Message_EnablePinyinSearch"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnablePinyinSearch:Z

    const-string v14, "CscFeature_Message_EnableCombineAndForwardMessage"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableCombindAndForwardMessage:Z

    const-string v14, "CscFeature_Message_DisableLeftAttachButtonUI"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sDisableLeftAttachButtonUI:Z

    const-string v14, "CscFeature_Message_MmsPageStyleInBubble"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sMmsPageStyleInBubble:Ljava/lang/String;

    const-string v14, "1page"

    sget-object v15, Lcom/android/mms/MmsConfig;->sMmsPageStyleInBubble:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_50

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sDisableMmsAllPageBubble:Z

    :goto_25
    const-string v14, "CscFeature_Message_CbChannelNb4DisplayInStatusBar"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sEnableCBChDisplayinStatusBar:Ljava/lang/String;

    sget-object v14, Lcom/android/mms/MmsConfig;->sEnableCBChDisplayinStatusBar:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    sput-object v14, Lcom/android/mms/MmsConfig;->sEnableCBChDisplayinStatusBar:Ljava/lang/String;

    :cond_c
    const-string v14, "CscFeature_Message_DisableSaveRingtoneMenu"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sDisableSaveRingtoneMenu:Z

    const-string v14, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableVoLTE:Z

    const-string v14, "CscFeature_Message_AvailableSizeForRestrictAutoDownload"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcom/android/mms/MmsConfig;->sAvailableSizeForRestrictAutoDownload:I

    const-string v14, "CscFeature_Common_EnableHDVoiceDuring3GConnection"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnable3GHDVoice:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v14

    const-string v15, "SKT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_51

    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    :cond_d
    :goto_26
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v14

    const-string v15, "SKT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_54

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    :cond_e
    :goto_27
    const-string v14, "CscFeature_Message_EnableMmsTransactionCustomize4Korea"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsTransactionCustomize4Korea:Z

    const-string v14, "CscFeature_Message_DisableSmscEditableOnlyFor"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->setmDisableSmscEditableOnlyFor(Ljava/lang/String;)V

    const-string v14, "CscFeature_Message_EnableMmsSubjectConcept4Korea"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsSubjectConcept4Korea:Z

    const-string v14, "CscFeature_Message_DisableRecipientSearchByCharMatchingDigit"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sDisableRecipientSearchByCharMatchingDigit:Z

    const-string v14, "CscFeature_Message_EnableMmsUserInputApn"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMmsUserInputApn:Z

    const-string v14, "CscFeature_Message_LinkDAUSA"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableLinkDAUSA:Z

    const-string v14, "CscFeature_Message_EnableDualNumber4Korea"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDualNumber4Korea:Z

    const-string v14, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableAddPrefix4InternationalCall:Z

    const-string v14, "CscFeature_Message_RemoveInternationalTelNumPrefix"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sRemoveInternationalTelNumPrefix:Z

    const-string v14, "CscFeature_Message_EnableMultiDraftBox"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableMultiDraftMsgBox:Z

    const-string v14, "CscFeature_Message_DisableParsingAudioFilenameFromPart"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sDisableParsingAudioFilenameFromPart:Z

    const-string v14, "CscFeature_Message_EnableFlickThreadView"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableFlickThreadView:Z

    const-string v14, "CscFeature_Message_BlockSendMmsWithOnlySubject"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sBlockSendMmsWithOnlySubject:Z

    const-string v14, "CscFeature_Message_EnableDialogAlertWhenTextInput"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sEnableDialogAlertWhenTextInput:Ljava/lang/String;

    const-string v14, "CscFeature_Message_MoveReadNDeliverySettingToComposer"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sMoveReadNDeliverySettingToComposer:Z

    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableKTSMSReadConfirm:Z

    const-string v14, "CscFeature_Message_EnableUnknownURLLink"

    sget-boolean v15, Lcom/android/mms/MmsConfig;->sEnableUnknownURLlink:Z

    invoke-virtual {v3, v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableUnknownURLlink:Z

    const-string v14, "CscFeature_Message_ConfigSpamReport"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sEnableSpamReport4Kor:Ljava/lang/String;

    const-string v14, "CscFeature_Message_HttpSocketTimeout"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    sget v14, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    if-gez v14, :cond_f

    const v14, 0xea60

    sput v14, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    :cond_f
    const-string v14, "CscFeature_Message_MmsModeCaptureVideoMaxSize"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcom/android/mms/MmsConfig;->sMmsModeCaptureVideoMaxSize:I

    const-string v14, "CscFeature_Message_ConfigNotiForLongMessage"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcom/android/mms/MmsConfig;->sPageCountForLMSNoti:I

    const-string v14, "CscFeature_Message_ConfigDirectCall"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sConfigDirectCall:Ljava/lang/String;

    const-string v14, "Show"

    const-string v15, "CscFeature_Message_ConfigDisplayCntInList"

    invoke-virtual {v3, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sDisplayCntInList:Z

    :cond_10
    const-string v14, "-DeliveryReport"

    const-string v15, "CscFeature_Message_ConfigFeatureDuringRoaming"

    invoke-virtual {v3, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sDeliveryOffDuringRoaming:Z

    :cond_11
    const-string v14, "+AddContactMenu"

    const-string v15, "CscFeature_Message_ConfigFeatureSimList"

    invoke-virtual {v3, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sContactMenuInSimList:Z

    :cond_12
    const-string v14, "Split"

    const-string v15, "CscFeature_Message_ConfigThreadForMultipleDest"

    invoke-virtual {v3, v15}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sSplitThread:Z

    :cond_13
    const-string v14, "CscFeature_Message_BaseTimeZoneDuringRoaming"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sBaseTimeZone:Ljava/lang/String;

    const-string v14, "Asia/Shanghai"

    sget-object v15, Lcom/android/mms/MmsConfig;->sBaseTimeZone:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sRoamingTimeSchemeForCHN:Z

    :cond_14
    const-string v14, "CscFeature_Message_EnableDisplayLocation"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sDisplayLocation:Z

    const-string v14, "CscFeature_Message_EnableViewByMessageType"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableViewByMessageType:Z

    const-string v14, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableAirMessage:Z

    const-string v14, "CscFeature_RIL_ConfigSsms"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sSSMSOperator:Ljava/lang/String;

    const-string v14, "ZTO"

    sget-object v15, Lcom/android/mms/MmsConfig;->sSSMSOperator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15

    const-string v14, "ARO"

    sget-object v15, Lcom/android/mms/MmsConfig;->sSSMSOperator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    :cond_15
    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableSSMS:Z

    :cond_16
    const-string v14, "CscFeature_Contact_ConfigForYellowPage"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "SHOW"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableYellowPage:Z

    const-string v14, "CscFeature_Message_ConfigAddTextOption"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/MmsConfig;->sConfigAddTextOption:Ljava/lang/String;

    const-string v14, "contact,calendar"

    sget-object v15, Lcom/android/mms/MmsConfig;->sConfigAddTextOption:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableAddText:Z

    :cond_17
    const-string v14, "klteuc"

    sget-object v15, Lcom/android/mms/MmsConfig;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    const-string v14, "klteattactive"

    sget-object v15, Lcom/android/mms/MmsConfig;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    const-string v14, "kminilteuc"

    sget-object v15, Lcom/android/mms/MmsConfig;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    const-string v14, "m2alteuc"

    sget-object v15, Lcom/android/mms/MmsConfig;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    const-string v14, "mega2lteuc"

    sget-object v15, Lcom/android/mms/MmsConfig;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    const-string v14, "slteuc"

    sget-object v15, Lcom/android/mms/MmsConfig;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    const-string v14, "trlteuc"

    sget-object v15, Lcom/android/mms/MmsConfig;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    const-string v14, "tblteuc"

    sget-object v15, Lcom/android/mms/MmsConfig;->PRODUCT_NAME:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_57

    :cond_18
    const/4 v14, 0x1

    :goto_28
    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableEcid:Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v14

    const-string v15, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableContextServiceEnableSurveyMode:Z

    return-void

    :cond_19
    const-string v14, "Mms/MmsConfig"

    const-string v15, "before partial update"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/csc/CscLoader;->partialUpdate(Landroid/content/Context;)Z

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_1b
    const-string v14, "csc"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    const/4 v14, 0x2

    sput v14, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    goto/16 :goto_2

    :cond_1c
    const-string v14, "none"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    const/4 v14, 0x0

    sput v14, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    goto/16 :goto_2

    :cond_1d
    const/4 v14, 0x1

    sput v14, Lcom/android/mms/MmsConfig;->sEmbeddedTextTemplateType:I

    goto/16 :goto_2

    :cond_1e
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_1f
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_20
    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_21
    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_22
    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_23
    const/4 v14, 0x0

    goto/16 :goto_8

    :cond_24
    const/4 v14, 0x0

    goto/16 :goto_9

    :cond_25
    const/4 v14, 0x0

    goto/16 :goto_a

    :cond_26
    const/4 v14, 0x0

    goto/16 :goto_b

    :cond_27
    const/4 v14, 0x0

    goto/16 :goto_c

    :cond_28
    const/4 v14, 0x0

    goto/16 :goto_d

    :cond_29
    const/4 v14, 0x0

    goto/16 :goto_e

    :cond_2a
    const/4 v14, 0x0

    goto/16 :goto_f

    :cond_2b
    const/4 v14, 0x0

    goto/16 :goto_10

    :cond_2c
    const/4 v14, 0x0

    goto/16 :goto_11

    :cond_2d
    const/4 v14, 0x0

    goto/16 :goto_12

    :cond_2e
    const/4 v14, 0x0

    goto/16 :goto_13

    :cond_2f
    const/4 v14, 0x0

    goto/16 :goto_14

    :cond_30
    const/4 v14, 0x0

    goto/16 :goto_15

    :cond_31
    const/4 v14, 0x0

    goto/16 :goto_16

    :cond_32
    const/4 v14, 0x0

    goto/16 :goto_17

    :cond_33
    const/4 v14, 0x0

    goto/16 :goto_18

    :cond_34
    const-string v14, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v3, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v14

    sput v14, Lcom/android/mms/MmsConfig;->sContactMatchCliDigit:I

    goto/16 :goto_19

    :cond_35
    const/4 v14, 0x0

    goto/16 :goto_1a

    :cond_36
    const/4 v14, 0x0

    goto/16 :goto_1b

    :cond_37
    const/4 v14, 0x0

    goto/16 :goto_1c

    :cond_38
    const/4 v14, 0x0

    goto/16 :goto_1d

    :cond_39
    const/4 v14, 0x0

    goto/16 :goto_1e

    :cond_3a
    const-string v14, "FULL_BRANDED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3b

    const/4 v14, 0x2

    sput v14, Lcom/android/mms/MmsConfig;->RCS_STATE_VALUE:I

    goto/16 :goto_1f

    :cond_3b
    const/4 v14, 0x4

    sput v14, Lcom/android/mms/MmsConfig;->RCS_STATE_VALUE:I

    goto/16 :goto_1f

    :cond_3c
    const/4 v14, 0x0

    goto/16 :goto_20

    :cond_3d
    sget v14, Lcom/android/mms/MmsConfig;->sMinRecipientLength:I

    goto/16 :goto_21

    :cond_3e
    const/4 v14, 0x0

    goto/16 :goto_22

    :cond_3f
    const-string v14, "smsmms"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x2

    sput v14, Lcom/android/mms/MmsConfig;->sEmojiSupportType:I

    goto/16 :goto_23

    :cond_40
    const-string v14, "us-usc"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_41

    new-instance v14, Lcom/android/mms/cmas/CMASVenderUSCC;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderUSCC;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_41
    const-string v14, "us-spr"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_42

    new-instance v14, Lcom/android/mms/cmas/CMASVenderSPR;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderSPR;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_42
    const-string v14, "us-att-lte"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_43

    new-instance v14, Lcom/android/mms/cmas/CMASVenderATTLTE;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderATTLTE;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_43
    const-string v14, "us-att-3g"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_44

    new-instance v14, Lcom/android/mms/cmas/CMASVenderATT3G;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderATT3G;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_44
    const-string v14, "us-att"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_45

    new-instance v14, Lcom/android/mms/cmas/CMASVenderATT;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderATT;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_45
    const-string v14, "us-tmo"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_46

    new-instance v14, Lcom/android/mms/cmas/CMASVenderTMO;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderTMO;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_46
    const-string v14, "la-cho"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_47

    new-instance v14, Lcom/android/mms/cmas/CMASVenderCHO;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderCHO;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_47
    const-string v14, "la-tfg"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_48

    new-instance v14, Lcom/android/mms/cmas/CMASVenderTFG;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderTFG;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_48
    const-string v14, "skt"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_49

    new-instance v14, Lcom/android/mms/cmas/CMASVenderSKT;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderSKT;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_49
    const-string v14, "kt"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4a

    new-instance v14, Lcom/android/mms/cmas/CMASVenderKT;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderKT;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_4a
    const-string v14, "lgu"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4b

    new-instance v14, Lcom/android/mms/cmas/CMASVenderLGU;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderLGU;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_4b
    const-string v14, "kor_open"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4c

    new-instance v14, Lcom/android/mms/cmas/CMASVenderSKT;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderSKT;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_4c
    const-string v14, "us-lra"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4d

    new-instance v14, Lcom/android/mms/cmas/CMASVenderLRA;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderLRA;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_4d
    const-string v14, "us-acg"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4e

    new-instance v14, Lcom/android/mms/cmas/CMASVenderACG;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderACG;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_4e
    const-string v14, "tw-open"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4f

    new-instance v14, Lcom/android/mms/cmas/CMASVenderTAIWAN;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVenderTAIWAN;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_4f
    new-instance v14, Lcom/android/mms/cmas/CMASVender;

    invoke-direct {v14}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    sput-object v14, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    goto/16 :goto_24

    :cond_50
    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sDisableMmsAllPageBubble:Z

    goto/16 :goto_25

    :cond_51
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v14

    const-string v15, "KT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_52

    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    goto/16 :goto_26

    :cond_52
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v14

    const-string v15, "LGU+"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_53

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    goto/16 :goto_26

    :cond_53
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v14

    const-string v15, "KOR_OPEN"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDelaySendSMS:Z

    goto/16 :goto_26

    :cond_54
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v14

    const-string v15, "KT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_55

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    goto/16 :goto_27

    :cond_55
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v14

    const-string v15, "LGU+"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_56

    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    goto/16 :goto_27

    :cond_56
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v14

    const-string v15, "KOR_OPEN"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/mms/MmsConfig;->sEnableDeletePermanentFailure:Z

    goto/16 :goto_27

    :cond_57
    const/4 v14, 0x0

    goto/16 :goto_28
.end method

.method public static loadFromPreference(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    const/16 v4, 0xa

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_threshold"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_key_threshold"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v1, 0x3e8

    sput v1, Lcom/android/mms/MmsConfig;->sSmsToMmsTextThreshold:I

    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSmsToMmsTextThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->sSmsToMmsTextThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "pref_key_max_recipient"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pref_key_max_recipient"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v1, 0x3e8

    sput v1, Lcom/android/mms/MmsConfig;->sRecipientLimit:I

    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecipientLimit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->sRecipientLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "pref_key_mms_max_recipient"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "pref_key_mms_max_recipient"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v1, 0x3e8

    sput v1, Lcom/android/mms/MmsConfig;->sMmsRecipientLimit:I

    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMmsRecipientLimit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->sMmsRecipientLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "pref_key_mms_max_size"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "pref_key_mms_creation_mode"

    const-string v2, "free"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    const-string v1, "pref_key_sms_email_gateway"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "pref_key_sms_email_gateway"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/MmsConfig;->sEmailGateway:Ljava/lang/String;

    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEmailGateway="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/MmsConfig;->sEmailGateway:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "pref_key_mms_image_resize_resolution"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "pref_key_mms_image_resize_resolution"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setImageResolution(Ljava/lang/String;)V

    :cond_5
    const-string v1, "pref_key_cb_settings_channel"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "pref_key_cb_settings_channel"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setCBChannel(Ljava/lang/String;)V

    :cond_6
    const-string v1, "pref_key_mms_expiry_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "pref_key_mms_expiry_time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setMmsExpiry(Ljava/lang/String;)V

    :cond_7
    const-string v1, "pref_key_msgtone_repeat_interval"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "pref_key_msgtone_repeat_interval"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setMsgtoneRepeatInterval(Ljava/lang/String;)V

    :cond_8
    const-string v1, "pref_key_mms_slide_max_count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "pref_key_mms_slide_max_count"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v1, 0x3e8

    sput v1, Lcom/android/mms/MmsConfig;->sMaxSlideCount:I

    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxSlideCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/MmsConfig;->sMaxSlideCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v1, "pref_key_sms_text_template"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "pref_key_sms_text_template"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->SetPreloadTextTemplate(Ljava/lang/String;)V

    :cond_a
    const-string v1, "pref_key_cmas_test_onoff"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "pref_key_cmas_test_onoff"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setCmasTestOnOff(Z)V

    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init CmasTestMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCMASTestOnOff()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private static loadMmsSettings(Landroid/content/Context;)V
    .locals 8
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :try_start_0
    const-string v6, "mms_config"

    invoke-static {v2, v6}, Lcom/android/mms/MmsConfig;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/android/mms/MmsConfig;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_1
    return-void

    :cond_1
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v6, "name"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "bool"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "enabledMMS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/mms/MmsConfig;->sMmsEnabled:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v6, "Mms/MmsConfig"

    const-string v7, "loadMmsSettings caught "

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :cond_3
    :try_start_3
    const-string v6, "enabledTransID"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/mms/MmsConfig;->sTransIdEnabled:Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v6, "Mms/MmsConfig"

    const-string v7, "loadMmsSettings caught "

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :cond_4
    :try_start_5
    const-string v6, "enabledNotifyWapMMSC"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/mms/MmsConfig;->sNotifyWapMMSC:Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    const-string v6, "Mms/MmsConfig"

    const-string v7, "loadMmsSettings caught "

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    :cond_5
    :try_start_7
    const-string v6, "aliasEnabled"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/mms/MmsConfig;->sAliasEnabled:Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6

    :cond_6
    :try_start_8
    const-string v6, "allowAttachAudio"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/mms/MmsConfig;->sAllowAttachAudio:Z

    goto/16 :goto_0

    :cond_7
    const-string v6, "int"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "mmsHeaderSize"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sMmsHeaderSize:I

    goto/16 :goto_0

    :cond_8
    const-string v6, "minMessageCountPerThread"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sMinMessageCountPerThread:I

    goto/16 :goto_0

    :cond_9
    const-string v6, "maxMessageCountPerThread"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sMaxMessageCountPerThread:I

    goto/16 :goto_0

    :cond_a
    const-string v6, "httpSocketTimeout"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sHttpSocketTimeout:I

    goto/16 :goto_0

    :cond_b
    const-string v6, "maxSizeScaleForPendingMmsAllowed"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sMaxSizeScaleForPendingMmsAllowed:I

    goto/16 :goto_0

    :cond_c
    const-string v6, "aliasMinChars"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sAliasRuleMinChars:I

    goto/16 :goto_0

    :cond_d
    const-string v6, "aliasMaxChars"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/mms/MmsConfig;->sAliasRuleMaxChars:I

    goto/16 :goto_0

    :cond_e
    const-string v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "uaProfTagName"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    sput-object v4, Lcom/android/mms/MmsConfig;->sUaProfTagName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string v6, "httpParams"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    sput-object v4, Lcom/android/mms/MmsConfig;->sHttpParams:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    const-string v6, "httpParamsLine1Key"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sput-object v4, Lcom/android/mms/MmsConfig;->sHttpParamsLine1Key:Ljava/lang/String;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private static loadOtherSettings(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/MmsConfig;->sEnableMultiwindow:Z

    :cond_0
    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " enable multiwindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/MmsConfig;->sEnableMultiwindow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static loadProvisioning(Landroid/content/Context;)V
    .locals 15
    .param p0    # Landroid/content/Context;

    const/4 v14, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v11, "prov_transaction_log_key"

    invoke-interface {v7, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "prov_transaction_log_key"

    invoke-interface {v7, v11, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    sput-boolean v11, Lcom/android/mms/MmsConfig;->sTransactionLoggable:Z

    const-string v11, "Mms/MmsConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Enable Transaction Log: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/android/mms/MmsConfig;->sTransactionLoggable:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v11, "prov_optional_field_attendance_key"

    invoke-interface {v7, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "prov_optional_field_attendance_key"

    const/4 v12, 0x0

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    sput-boolean v11, Lcom/android/mms/MmsConfig;->sOptionalFieldAttendance:Z

    const-string v11, "Mms/MmsConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Add Optional Field: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-boolean v13, Lcom/android/mms/MmsConfig;->sOptionalFieldAttendance:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v11, "prov_transaction_timeout_key"

    invoke-interface {v7, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "prov_transaction_timeout_key"

    const-string v12, "30"

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    sput v11, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    sget v11, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    const v12, 0x2bf20

    if-lt v11, v12, :cond_2

    sget v11, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    add-int/lit16 v11, v11, -0x7530

    sput v11, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    const-string v11, "Mms/MmsConfig"

    const-string v12, "Reduce timeout for stack clear."

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v11, "Mms/MmsConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Transaction Timeout: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v11, "ro.csc.sales_code"

    const-string v12, "NONE"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "XAR"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "ACG"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mms_user_agent"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    :goto_0
    const-string v11, "XAR"

    const-string v12, "TMO"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "ACG"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mms_x_wap_profile_url"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    :goto_1
    const-string v11, "x-wap-profile"

    sput-object v11, Lcom/android/mms/MmsConfig;->sUaProfTagName:Ljava/lang/String;

    sget-object v11, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    if-eqz v11, :cond_7

    sget-object v11, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/mms/MmsConfig;->generateUaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v11, Lcom/android/mms/MmsConfig;->sMmsUaUapAutoCreate:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/mms/MmsConfig;->generateUapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_6

    sput-object v0, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    :cond_6
    if-eqz v1, :cond_7

    sput-object v1, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v11, "CscFeature_Message_UserAgent"

    invoke-virtual {v2, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "CscFeature_Message_UaProfUrl"

    invoke-virtual {v2, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, ""

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    sput-object v3, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    :cond_8
    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    sput-object v4, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    :cond_9
    const-string v11, "prov_uap_current_key"

    invoke-interface {v7, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "prov_uap_current_key"

    invoke-interface {v7, v11, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "prov_uastring_current_key"

    const-string v12, "Android-Mms/2.0"

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "prov_uapurl_current_key"

    const-string v12, ""

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    sget-object v11, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    :cond_a
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v11, "prov_uastring_current_key"

    sget-object v12, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v11, "prov_uapurl_current_key"

    sget-object v12, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_b
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "Mms/MmsConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "User Agent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Mms/MmsConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "UAP url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    const-string v11, "Mozilla/5.0 (Linux; Android 4.4.4; en-us; SAMSUNG SM-N910T Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36"

    sput-object v11, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v11, "http://wap.samsungmobile.com/uaprof/SM-N910T.xml"

    sput-object v11, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    const-string v11, "prov_uastring_key"

    const-string v12, "Android-Mms/2.0"

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    const-string v11, "prov_uapurl_key"

    const-string v12, ""

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    goto :goto_2
.end method

.method public static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method private static parseImageResizeQuality(Ljava/lang/String;)I
    .locals 5
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x50

    :goto_0
    const-string v2, "Mms/MmsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load Resize quality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "high"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x64

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sMaxQuality:Z

    goto :goto_0

    :cond_1
    const-string v2, "normal"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x50

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x50

    goto :goto_0
.end method

.method public static setApnOnOff(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/MmsConfig;->sEnableApnOnOff:Z

    return-void
.end method

.method public static setCBChannel(Ljava/lang/String;)V
    .locals 7
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Mms/MmsConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCBChannel() has invalid parameter. value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/MmsConfig;->sCBChannel:[Ljava/lang/String;

    sget-object v4, Lcom/android/mms/MmsConfig;->sCBChannel:[Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v0, Lcom/android/mms/MmsConfig;->sCBChannel:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    const-string v4, "Mms/MmsConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channelID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static setCmasConversationListQuery(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    sput-object p0, Lcom/android/mms/MmsConfig;->sCmasConversationListQuery:Ljava/lang/String;

    return-void
.end method

.method public static setCmasTestOnOff(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/MmsConfig;->sEnableCMASTestOnOff:Z

    return-void
.end method

.method public static setContactMatchCliDigit(I)V
    .locals 0
    .param p0    # I

    sput p0, Lcom/android/mms/MmsConfig;->sContactMatchCliDigit:I

    return-void
.end method

.method public static setEmailGateway(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    sput-object p0, Lcom/android/mms/MmsConfig;->sEmailGateway:Ljava/lang/String;

    return-void
.end method

.method private static setEnalbeLimitOnMmsSubject(Ljava/lang/String;)V
    .locals 7
    .param p0    # Ljava/lang/String;

    const/16 v6, 0x28

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "byte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    :cond_0
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ksc5601byte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_3

    array-length v2, v0

    if-ne v2, v5, :cond_3

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sput v6, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    sput-boolean v4, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    goto :goto_0

    :cond_3
    const/16 v2, 0x28

    :try_start_1
    sput v2, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    sput v6, Lcom/android/mms/MmsConfig;->sMaxSubjectLength:I

    sput-boolean v4, Lcom/android/mms/MmsConfig;->sEnableLimitOnMmsSubjectByByte:Z

    goto :goto_0
.end method

.method public static setFreeMessageEnabled(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFreeMessageEnabled, free message policy(getSupportedFeatures) is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->hasFreeMessage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/MmsConfig;->sEnableFreeMessage:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v4, Lcom/android/mms/MmsConfig;->sEnableFreeMessage:Z

    goto :goto_0
.end method

.method public static setImageResolution(Ljava/lang/String;)V
    .locals 7
    .param p0    # Ljava/lang/String;

    const/16 v6, 0xa00

    const/16 v5, 0x800

    const/16 v4, 0x780

    const/16 v3, 0x500

    const/16 v2, 0x1e0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImageResolution() has invalid parameter. value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QCIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    const/16 v0, 0x90

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    :goto_1
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMaxImageWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sMaxImageHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QVGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x140

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    const/16 v0, 0xf0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x280

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    sput v2, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x320

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    sput v2, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HD720"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sput v3, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    const/16 v0, 0x2d0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4VGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput v3, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    const/16 v0, 0x3c0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UXGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x640

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    const/16 v0, 0x4b0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HD1080"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sput v4, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    const/16 v0, 0x438

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QXGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sput v5, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    const/16 v0, 0x600

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WQXGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sput v6, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    sput v4, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSXGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sput v6, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    sput v5, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUXGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xcc0

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    const/16 v0, 0x990

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1

    :cond_c
    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_WIDTH:I

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageWidth:I

    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_HEIGHT:I

    sput v0, Lcom/android/mms/MmsConfig;->sMaxImageHeight:I

    goto/16 :goto_1
.end method

.method public static setMaxMessageSize(I)V
    .locals 0
    .param p0    # I

    sput p0, Lcom/android/mms/MmsConfig;->sMaxMessageSize:I

    return-void
.end method

.method public static setMaxMessageSize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const-string v2, "free"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_mms_max_size"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_mms_max_size"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v0, 0x4b000

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(I)V

    goto :goto_0
.end method

.method public static setMaxMessageSize(Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxMessageSize() has invalid parameter. value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "30"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x7800

    :goto_1
    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxsize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(I)V

    goto :goto_0

    :cond_1
    const-string v1, "100"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x19000

    goto :goto_1

    :cond_2
    const-string v1, "300"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x4b000

    goto :goto_1

    :cond_3
    const-string v1, "350"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x57800

    goto :goto_1

    :cond_4
    const-string v1, "500"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7d000

    goto :goto_1

    :cond_5
    const-string v1, "600"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x96000

    goto :goto_1

    :cond_6
    const-string v1, "1m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0xfa000

    goto :goto_1

    :cond_7
    const-string v1, "1.2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x12c000

    goto :goto_1

    :cond_8
    const-string v1, "1.5m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x177000

    goto :goto_1

    :cond_9
    const-string v1, "2m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v0, 0x1f4000

    goto/16 :goto_1

    :cond_a
    const-string v1, "3m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v0, 0x2ee000

    goto/16 :goto_1

    :cond_b
    const v0, 0x4b000

    goto/16 :goto_1
.end method

.method public static setMessageConfigImeiTracker(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    sput-object p0, Lcom/android/mms/MmsConfig;->sMessageConfigImeiTracker:Ljava/lang/String;

    return-void
.end method

.method public static setMmsExpiry(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMmsExpiry() has invalid parameter. value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "max"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    :cond_1
    :goto_1
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMmsExpiry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "1d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x15180

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    goto :goto_1

    :cond_3
    const-string v0, "2d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x2a300

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    goto :goto_1

    :cond_4
    const-string v0, "1w"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x93a80

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    goto :goto_1

    :cond_5
    const-string v0, "2w"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x127500

    sput v0, Lcom/android/mms/MmsConfig;->sMmsExpiry:I

    goto :goto_1
.end method

.method public static setMmsMaxRecipient(I)V
    .locals 0
    .param p0    # I

    const/16 p0, 0x3e8

    sput p0, Lcom/android/mms/MmsConfig;->sMmsRecipientLimit:I

    return-void
.end method

.method public static setMmsSlideMaxCount(I)V
    .locals 3
    .param p0    # I

    const/16 p0, 0x3e8

    if-gtz p0, :cond_0

    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMmsSlideMaxCount() has invalid parameter. value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sput p0, Lcom/android/mms/MmsConfig;->sMaxSlideCount:I

    goto :goto_0
.end method

.method public static setMsgtoneRepeatInterval(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMsgtoneRepeatInterval() has invalid parameter. value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "once"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput v0, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    :cond_1
    :goto_1
    const-string v0, "Mms/MmsConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMsgtoneRepeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "2m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    sput v0, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    goto :goto_1

    :cond_3
    const-string v0, "5m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    sput v0, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    goto :goto_1

    :cond_4
    const-string v0, "10m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    sput v0, Lcom/android/mms/MmsConfig;->sMsgtoneRepeatInterval:I

    goto :goto_1
.end method

.method public static setOperatorNumeric(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    sput-object p0, Lcom/android/mms/MmsConfig;->sOperatorNumeric:Ljava/lang/String;

    return-void
.end method

.method public static setOptionalFieldAttendance(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/MmsConfig;->sOptionalFieldAttendance:Z

    return-void
.end method

.method public static setRecipientLimit(I)V
    .locals 0
    .param p0    # I

    const/16 p0, 0x3e8

    sput p0, Lcom/android/mms/MmsConfig;->sRecipientLimit:I

    return-void
.end method

.method public static setSavePduFiles(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/MmsConfig;->sSavePdu:Z

    return-void
.end method

.method public static setSetFontSizeByVolumeKey(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/MmsConfig;->sSetFontSizeByVolumeKey:Z

    return-void
.end method

.method public static setSmsMmsThreshold(I)V
    .locals 0
    .param p0    # I

    const/16 p0, 0x3e8

    sput p0, Lcom/android/mms/MmsConfig;->sSmsToMmsTextThreshold:I

    return-void
.end method

.method public static setStickerEnabled(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v0

    const-string v1, "Mms/MmsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shop agent feature value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/MmsConfig;->sEnableSticker:Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/MmsConfig;->sEnableSticker:Z

    goto :goto_0
.end method

.method public static setTetheringMode(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/MmsConfig;->sTetheringmode:Z

    return-void
.end method

.method public static setTransactionLoggable(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/MmsConfig;->sTransactionLoggable:Z

    return-void
.end method

.method public static setTransactionTimeout(I)V
    .locals 1
    .param p0    # I

    mul-int/lit16 v0, p0, 0x3e8

    sput v0, Lcom/android/mms/MmsConfig;->sTransactionTimeout:I

    return-void
.end method

.method public static setUaProfUrl(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    sput-object p0, Lcom/android/mms/MmsConfig;->sUaProfUrl:Ljava/lang/String;

    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    sput-object p0, Lcom/android/mms/MmsConfig;->sUserAgent:Ljava/lang/String;

    return-void
.end method

.method public static setUserNai()Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/data/data/com.sec.sprextension/files/mm.prop"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    sput-object v7, Lcom/android/mms/MmsConfig;->sUserNai:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v1

    move-object v5, v6

    move-object v3, v4

    :goto_1
    :try_start_4
    const-string v8, "Mms/MmsConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "filenotfoundexception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FilterInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_2
    :goto_4
    sget-object v8, Lcom/android/mms/MmsConfig;->sUserNai:Ljava/lang/String;

    return-object v8

    :cond_3
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_4
    :goto_5
    if-eqz v6, :cond_5

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FilterInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_5
    :goto_6
    if-eqz v1, :cond_b

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object v0, v1

    move-object v5, v6

    move-object v3, v4

    goto :goto_4

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    move-object v5, v6

    move-object v3, v4

    goto :goto_4

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_7
    move-exception v2

    :goto_7
    :try_start_b
    const-string v8, "Mms/MmsConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ioexception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_6

    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_6
    :goto_8
    if-eqz v5, :cond_7

    :try_start_d
    invoke-virtual {v5}, Ljava/io/FilterInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    :cond_7
    :goto_9
    if-eqz v0, :cond_2

    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_4

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_9
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catch_a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :catchall_0
    move-exception v8

    :goto_a
    if-eqz v3, :cond_8

    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :cond_8
    :goto_b
    if-eqz v5, :cond_9

    :try_start_10
    invoke-virtual {v5}, Ljava/io/FilterInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    :cond_9
    :goto_c
    if-eqz v0, :cond_a

    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    :cond_a
    :goto_d
    throw v8

    :catch_b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    :catch_c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :catch_d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    :catchall_1
    move-exception v8

    move-object v3, v4

    goto :goto_a

    :catchall_2
    move-exception v8

    move-object v5, v6

    move-object v3, v4

    goto :goto_a

    :catchall_3
    move-exception v8

    move-object v0, v1

    move-object v5, v6

    move-object v3, v4

    goto :goto_a

    :catch_e
    move-exception v2

    move-object v3, v4

    goto :goto_7

    :catch_f
    move-exception v2

    move-object v5, v6

    move-object v3, v4

    goto :goto_7

    :catch_10
    move-exception v2

    move-object v0, v1

    move-object v5, v6

    move-object v3, v4

    goto :goto_7

    :catch_11
    move-exception v2

    goto/16 :goto_1

    :catch_12
    move-exception v2

    move-object v3, v4

    goto/16 :goto_1

    :catch_13
    move-exception v2

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    move-object v5, v6

    move-object v3, v4

    goto/16 :goto_4
.end method

.method private static setmDisableSmscEditableOnlyFor(Ljava/lang/String;)V
    .locals 6
    .param p0    # Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "450"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sput-boolean v5, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    :try_start_1
    array-length v2, v0

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "450"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    sput-boolean v5, Lcom/android/mms/MmsConfig;->sDisableSmscEditableOnlyFor:Z

    goto :goto_0
.end method

.method private static updateComponentEnabledState(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.android.mms.ui.ComposeMessageMms"

    invoke-static {p0, v0}, Lcom/android/mms/MmsConfig;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsWidgetEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.mms.widget.MmsWidgetProvider"

    invoke-static {p0, v0}, Lcom/android/mms/MmsConfig;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.android.mms.ui.TransferContent"

    invoke-static {p0, v0}, Lcom/android/mms/MmsConfig;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.mms.ui.ComposeMessageMms"

    invoke-static {p0, v0}, Lcom/android/mms/MmsConfig;->disableComponent(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "com.android.mms.ui.ComposeMessageMmsNoVItem"

    invoke-static {p0, v0}, Lcom/android/mms/MmsConfig;->enableComponent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->setComponentFreeMessage(Landroid/content/Context;Z)V

    goto :goto_1
.end method

.method public static updateEmergencyMode()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/MmsConfig;->sEmergencyMode:I

    return-void
.end method

.method public static useFontSizeCustomizeForKorFullDHModel()Z
    .locals 2

    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_WIDTH:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/MmsConfig;->MAX_IMAGE_HEIGHT:I

    const/16 v1, 0x438

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useFontSizeCustomizeForLargeScreenModel()Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->hasLargerThan5inchScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useNewCmasPrefix()Z
    .locals 1

    sget-object v0, Lcom/android/mms/MmsConfig;->sCMASVender:Lcom/android/mms/cmas/CMASVender;

    invoke-virtual {v0}, Lcom/android/mms/cmas/CMASVender;->useNewCmasPrefix()Z

    move-result v0

    return v0
.end method

.method public static useRecipientsFontSizeCustomizeForKor()Z
    .locals 2

    const-string v0, "KOR"

    const-string v1, "USA"

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
