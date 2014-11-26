.class public interface abstract Lcom/diotek/ime/framework/common/PrivateImeOptionsController;
.super Ljava/lang/Object;
.source "PrivateImeOptionsController.java"


# static fields
.field public static final CMD_IME_ACTION_LONGPRESS:Ljava/lang/String; = "imeAction:longPress"

.field public static final CMD_IME_ACTION_SELECT_RECIPIENT:Ljava/lang/String; = "imeAction:selectRecipient"

.field public static final INPUTMETHOD_HANDWRITING:I = 0x3

.field public static final INPUTMETHOD_HANDWRITING_BOX1:I = 0x4

.field public static final INPUTMETHOD_HANDWRITING_BOX2:I = 0x5

.field public static final INPUTMETHOD_HANDWRITING_FULL:I = 0x6

.field public static final INPUTMETHOD_PHONEPAD:I = 0x1

.field public static final INPUTMETHOD_QWERTY:I = 0x2

.field public static final INPUTMETHOD_UNKNOWN:I = 0x0

.field public static final INPUTRANGE_CZECH:I = 0x5

.field public static final INPUTRANGE_DUTCH:I = 0xa

.field public static final INPUTRANGE_EMOTICON:I = 0xe

.field public static final INPUTRANGE_ENGLISH:I = 0x2

.field public static final INPUTRANGE_FRENCH:I = 0x8

.field public static final INPUTRANGE_GERMAN:I = 0x6

.field public static final INPUTRANGE_ITALIAN:I = 0x9

.field public static final INPUTRANGE_KOREAN:I = 0x1

.field public static final INPUTRANGE_NUMERIC:I = 0x4

.field public static final INPUTRANGE_POLISH:I = 0xb

.field public static final INPUTRANGE_PORTUGUESE:I = 0xc

.field public static final INPUTRANGE_SPANISH:I = 0x7

.field public static final INPUTRANGE_SYMBOL:I = 0x3

.field public static final INPUTRANGE_TURKISH:I = 0xd

.field public static final INPUTRANGE_UNKNOWN:I = 0x0

.field public static final INPUTTYPE_BROWSER_NEXT:I = 0x10

.field public static final INPUTTYPE_BROWSER_PREV:I = 0xf

.field public static final INPUTTYPE_BROWSER_PREV_NEXT:I = 0xe

.field public static final INPUTTYPE_CLIPBOARD_DISABLE_EDITTEXT:I = 0x17

.field public static final INPUTTYPE_CONTACT_SEARCH:I = 0xc

.field public static final INPUTTYPE_CONTACT_SPECIFIC_CONTEXT:I = 0x1a

.field public static final INPUTTYPE_DICTIONARY:I = 0x8

.field public static final INPUTTYPE_EMOJI_DISABLE_EDITTEXT:I = 0x1b

.field public static final INPUTTYPE_ENG_TOGGLE:I = 0xd

.field public static final INPUTTYPE_FILENAME:I = 0x3

.field public static final INPUTTYPE_FLOATING_EDITTEXT:I = 0x12

.field public static final INPUTTYPE_IPADDRESS:I = 0x1

.field public static final INPUTTYPE_MMS_CONTENT:I = 0x5

.field public static final INPUTTYPE_MMS_FILENAME:I = 0x7

.field public static final INPUTTYPE_MMS_RECIPIENT:I = 0x6

.field public static final INPUTTYPE_MONTH_EDITTEXT:I = 0xa

.field public static final INPUTTYPE_NONE:I = 0x4

.field public static final INPUTTYPE_NO_KOREAN_SUGGESTION:I = 0xb

.field public static final INPUTTYPE_NO_TRACE_POPUP:I = 0x14

.field public static final INPUTTYPE_NUMBERPICKER_EDITTEXT:I = 0xe

.field public static final INPUTTYPE_OCR_DISABLE_EDITTEXT:I = 0x16

.field public static final INPUTTYPE_OPTION:I = 0x2

.field public static final INPUTTYPE_PREDICTION_OFF:I = 0x15

.field public static final INPUTTYPE_PREDICTION_OFF_LANDSCAPE:I = 0x18

.field public static final INPUTTYPE_QUICK_COMMNAD_EDITTEXT:I = 0x19

.field public static final INPUTTYPE_QWERTY_EDITTEXT:I = 0x13

.field public static final INPUTTYPE_SPLIT_EDITTEXT:I = 0x11

.field public static final INPUTTYPE_UNKNOWN:I = 0x0

.field public static final INPUTTYPE_YEARDATETIME_EDITTEXT:I = 0x9

.field public static final KEY_BROWSER_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusNext"

.field public static final KEY_BROWSER_PREV:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusPrev"

.field public static final KEY_BROWSER_PREV_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.BrowserPrevNext"

.field public static final KEY_DEFAULT_INPUTMETHOD:Ljava/lang/String; = "defaultInputmethod"

.field public static final KEY_DEFAULT_INPUTRANGE:Ljava/lang/String; = "defaultInputmode"

.field public static final KEY_DEFAULT_LANGUAGE:Ljava/lang/String; = "defaultLanguage"

.field public static final KEY_EMOTICONINPUT:Ljava/lang/String; = "disableEmoticonInput"

.field public static final KEY_ENGLISH:Ljava/lang/String; = "english"

.field public static final KEY_EXTRACT_BACKGROUND_COLOR:Ljava/lang/String; = "extractBackgroundColor"

.field public static final KEY_HWRINPUT:Ljava/lang/String; = "disableHWRInput"

.field public static final KEY_INPUTTYPE:Ljava/lang/String; = "inputType"

.field public static final KEY_KOREAN:Ljava/lang/String; = "korean"

.field public static final KEY_LATIN_PREFERRED:Ljava/lang/String; = "LatinPreferred"

.field public static final KEY_NO_AUTO_PREPLACEMENT:Ljava/lang/String; = "disableAutoReplacement"

.field public static final KEY_NUMERIC:Ljava/lang/String; = "numeric"

.field public static final KEY_PREDICTION:Ljava/lang/String; = "disablePrediction"

.field public static final KEY_SYMBOL:Ljava/lang/String; = "symbol"

.field public static final KEY_VOICEINPUT:Ljava/lang/String; = "disableVoiceInput"

.field public static final T9DISABLE:Ljava/lang/String; = "XT9disable"

.field public static final VAL_CLIPBOARD_DISABLE:Ljava/lang/String; = "DisableClipboard"

.field public static final VAL_CONTACT_SEARCH:Ljava/lang/String; = "contactSearch"

.field public static final VAL_CONTACT_SPECIFIC_CONTEXT:Ljava/lang/String; = "csc"

.field public static final VAL_CZECH:Ljava/lang/String; = "czech"

.field public static final VAL_DICTIONARY:Ljava/lang/String; = "dictionary"

.field public static final VAL_DUTCH:Ljava/lang/String; = "dutch"

.field public static final VAL_EMOJI_DISABLE:Ljava/lang/String; = "DisableEmoji"

.field public static final VAL_EMOTICON:Ljava/lang/String; = "emoticon"

.field public static final VAL_ENGLISH:Ljava/lang/String; = "english"

.field public static final VAL_ENG_TOGGLE:Ljava/lang/String; = "EngToggle"

.field public static final VAL_FILENAME:Ljava/lang/String; = "filename"

.field public static final VAL_FLOATING_EDITTEXT:Ljava/lang/String; = "floating_edittext"

.field public static final VAL_FRENCH:Ljava/lang/String; = "french"

.field public static final VAL_GERMAN:Ljava/lang/String; = "german"

.field public static final VAL_HANDWRITING:Ljava/lang/String; = "handwriting"

.field public static final VAL_HANDWRITING_BOX1:Ljava/lang/String; = "handwritingbox1"

.field public static final VAL_HANDWRITING_BOX2:Ljava/lang/String; = "handwritingbox2"

.field public static final VAL_HANDWRITING_FULL:Ljava/lang/String; = "handwritingfull"

.field public static final VAL_IPADDRESS:Ljava/lang/String; = "ipAddress"

.field public static final VAL_ITALIAN:Ljava/lang/String; = "italian"

.field public static final VAL_KOREAN:Ljava/lang/String; = "korean"

.field public static final VAL_MMS_CONTENT:Ljava/lang/String; = "mmsContent"

.field public static final VAL_MMS_FILENAME:Ljava/lang/String; = "mmsFilename"

.field public static final VAL_MMS_RECIPIENT:Ljava/lang/String; = "mmsRecipient"

.field public static final VAL_MONTH_EDITTEXT:Ljava/lang/String; = "month_edittext"

.field public static final VAL_NONE:Ljava/lang/String; = "none"

.field public static final VAL_NO_KOREAN_SUGGESTION:Ljava/lang/String; = "noKoreanSuggestion"

.field public static final VAL_NO_MICROPHONE:Ljava/lang/String; = "noMicrophoneKey"

.field public static final VAL_NO_MICROPHONE_COMPAT:Ljava/lang/String; = "nm"

.field public static final VAL_NO_TRACE_POPUP:Ljava/lang/String; = "noTracePopup"

.field public static final VAL_NUMBERPICKER_EDITTEXT:Ljava/lang/String; = "NumberPicker_edittext"

.field public static final VAL_NUMERIC:Ljava/lang/String; = "numeric"

.field public static final VAL_OCR_DISABLE:Ljava/lang/String; = "DisableOCR"

.field public static final VAL_OPTION:Ljava/lang/String; = "option"

.field public static final VAL_PHONEPAD:Ljava/lang/String; = "phonepad"

.field public static final VAL_POLISH:Ljava/lang/String; = "polish"

.field public static final VAL_PORTUGUESE:Ljava/lang/String; = "portuguese"

.field public static final VAL_PREDICTION_OFF:Ljava/lang/String; = "PredictionOff"

.field public static final VAL_PREDICTION_OFF_LANDSCAPE:Ljava/lang/String; = "PredictionOffLandScape"

.field public static final VAL_QUICK_COMMNAD_EDITTEXT:Ljava/lang/String; = "QuickCommand_edittext"

.field public static final VAL_QWERTY:Ljava/lang/String; = "qwerty"

.field public static final VAL_QWERTY_EDITTEXT:Ljava/lang/String; = "qwerty_edittext"

.field public static final VAL_SPANISH:Ljava/lang/String; = "spanish"

.field public static final VAL_SPLIT_EDITTEXT:Ljava/lang/String; = "split_edittext"

.field public static final VAL_SYMBOL:Ljava/lang/String; = "symbol"

.field public static final VAL_TURKISH:Ljava/lang/String; = "turkish"

.field public static final VAL_YEARDATETIME_EDITTEXT:Ljava/lang/String; = "YearDateTime_edittext"


# virtual methods
.method public abstract getDefaultInputmethod()I
.end method

.method public abstract getDefaultInputrange()I
.end method

.method public abstract getDefaultLanguage()I
.end method

.method public abstract getInputType()I
.end method

.method public abstract getPrevNextTypeOfPrivateImeOptions()I
.end method

.method public abstract initPrivateImeOptionsTable()V
.end method

.method public abstract isDisableAutoCorrection()Z
.end method

.method public abstract isDisableEmoticonInput()Z
.end method

.method public abstract isDisableHWRInput()Z
.end method

.method public abstract isDisableVoice()Z
.end method

.method public abstract isEnableNextTypeOfPrivateImeOptions()Z
.end method

.method public abstract isEnabledLatinPreferred()Z
.end method

.method public abstract isEnglishEnabled()Z
.end method

.method public abstract isKoreanEnabled()Z
.end method

.method public abstract isNumericEnabled()Z
.end method

.method public abstract isPredictionOff()Z
.end method

.method public abstract isSymbolEnabled()Z
.end method

.method public abstract setPrivateImeOptionsToTable(Ljava/lang/String;)Z
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract updateInputType()V
.end method
