.class public Lcom/android/mms/util/UsageFrequencyAccumulator;
.super Ljava/lang/Object;
.source "UsageFrequencyAccumulator.java"


# static fields
.field public static final ADD_RECIPIENT:Ljava/lang/String; = "RECI"

.field public static final ADD_SLIDE:Ljava/lang/String; = "ASLI"

.field public static final ADD_SUBJECT:Ljava/lang/String; = "ASUB"

.field public static final AIR_BUTTON_ATTACH:Ljava/lang/String; = "HOVA"

.field public static final AIR_BUTTON_PREVIEW_SAVE:Ljava/lang/String; = "HOVS"

.field public static final AIR_BUTTON_RECIPEINT:Ljava/lang/String; = "HOVR"

.field public static final ATTACH_AUDIO:Ljava/lang/String; = "AUDI"

.field public static final ATTACH_CALENDAR:Ljava/lang/String; = "CALD"

.field public static final ATTACH_CONTACT:Ljava/lang/String; = "CNTC"

.field public static final ATTACH_IMAGE:Ljava/lang/String; = "IMAG"

.field public static final ATTACH_LOCATION:Ljava/lang/String; = "LOCA"

.field public static final ATTACH_MEMO:Ljava/lang/String; = "MEMO"

.field public static final ATTACH_MYLOCATION:Ljava/lang/String; = "MYLO"

.field public static final ATTACH_RECORDAUDIO:Ljava/lang/String; = "RCAD"

.field public static final ATTACH_RECORDVIDEO:Ljava/lang/String; = "RCVD"

.field public static final ATTACH_SCRAPBOOK:Ljava/lang/String; = "SCRP"

.field public static final ATTACH_TAKEPICTURE:Ljava/lang/String; = "TKPT"

.field public static final ATTACH_VIDEO:Ljava/lang/String; = "VDEO"

.field public static final CHANGE_INPUT_MODE:Ljava/lang/String; = "IMOD"

.field public static final CONTENT_SHARE:Ljava/lang/String; = "SHAR"

.field private static final CONTEXT_PROVIDER:Ljava/lang/String; = "com.samsung.android.providers.context"

.field public static final CONVERSATION_DISCARD:Ljava/lang/String; = "DISC"

.field public static final DIRECT_CALL:Ljava/lang/String; = "DICL"

.field public static final DRAFT_MESSAGES_LIST:Ljava/lang/String; = "DRFA"

.field public static final EMOTICON:Ljava/lang/String; = "EMOT"

.field public static final FILE_ATTACH:Ljava/lang/String; = "ATTF"

.field public static final FONT_SIZE:Ljava/lang/String; = "FOTN"

.field public static final FOWARD:Ljava/lang/String; = "FOWD"

.field public static final INSERT_SMILEY:Ljava/lang/String; = "SMIL"

.field public static final LOCKED_MESSAGES_LIST:Ljava/lang/String; = "LOKC"

.field public static final LOCK_MESSAGE:Ljava/lang/String; = "LOCM"

.field public static final LONG_PRESS_LIST_DELETE:Ljava/lang/String; = "SELD"

.field public static final LONG_PRESS_LIST_SELECT:Ljava/lang/String; = "LSEL"

.field private static final MMS_ID:Ljava/lang/String; = "com.android.mms"

.field public static final MORE_OPTION_DELETE:Ljava/lang/String; = "MEND"

.field public static final MORE_OPTION_SELECT:Ljava/lang/String; = "MSEL"

.field public static final PRIORITY_SENDERS:Ljava/lang/String; = "PROI"

.field public static final QUICK_RESPONSES:Ljava/lang/String; = "QUIC"

.field public static final RECEIVE_MMS:Ljava/lang/String; = "RCVM"

.field public static final RECEIVE_SMS:Ljava/lang/String; = "RCVS"

.field public static final REPEAT_MESSAGE_ALERT:Ljava/lang/String; = "REAL"

.field public static final SAVE_ATTACHMENT:Ljava/lang/String; = "SAVE"

.field public static final SCHEDULED_MESSAGES_LIST:Ljava/lang/String; = "SCEH"

.field public static final SENDING_DELAY_MESSAGE:Ljava/lang/String; = "DELS"

.field public static final SEND_MMS:Ljava/lang/String; = "SNDM"

.field public static final SEND_SMS:Ljava/lang/String; = "SNDS"

.field public static final SPAM_MESSAGES_LIST:Ljava/lang/String; = "SPMA"

.field private static final SURVEY_URI:Ljava/lang/String; = "content://com.samsung.android.providers.context.log.use_app_feature_survey"

.field private static final TAG:Ljava/lang/String; = "Mms/FunctionAccumulator"

.field public static final VIEW_MESSAGE_DETAILS:Ljava/lang/String; = "MDET"

.field public static final VIEW_SLIDESHOW:Ljava/lang/String; = "SLID"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionOfContextProviders(Landroid/content/Context;)I
    .locals 6

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.providers.context"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "Mms/FunctionAccumulator"

    const-string v4, "[SW] Could not find ContextProvider"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lcom/android/mms/util/UsageFrequencyAccumulator;->getVersionOfContextProviders(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v4, "content://com.samsung.android.providers.context.log.use_app_feature_survey"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    const-string v5, "com.android.mms"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "feature"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v4, "Mms/FunctionAccumulator"

    const-string v5, "ContextProvider insertion operation is performed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Mms/FunctionAccumulator"

    const-string v5, "Error while using the ContextProvider"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Mms/FunctionAccumulator"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.android.mms"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
