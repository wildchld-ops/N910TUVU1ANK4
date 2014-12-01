.class public Lcom/android/incallui/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;,
        Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;,
        Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;,
        Lcom/android/incallui/ContactInfoCache$FindInfoCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCache:Lcom/android/incallui/ContactInfoCache;


# instance fields
.field private final mCallBacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLandScapeDefaultImage:Z

.field private final mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ContactInfoCache;->mIsLandScapeDefaultImage:Z

    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/incalluibind/ServiceFactory;->newPhoneNumberService(Landroid/content/Context;)Lcom/android/incallui/service/PhoneNumberService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/ContactInfoCache;Lcom/android/services/telephony/common/CallIdentification;Lcom/android/incallui/CallerInfo;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/incallui/CallerInfo;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 3

    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)Lcom/android/incallui/CallerInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getNumberPresentation()I

    move-result v2

    invoke-static {p0, v1, v0, v2, p2}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    return-object v0
.end method

.method private buildEntry(Landroid/content/Context;ILcom/android/incallui/CallerInfo;IZI)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    invoke-static {p1, p3, v0, p4, p5}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    iget v6, p3, Lcom/android/incallui/CallerInfo;->photoResource:I

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p3, Lcom/android/incallui/CallerInfo;->photoResource:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iget-object v6, p3, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getDefaultSimForVoiceCalls()I

    move-result v5

    const-string v6, "feature_chn_duos"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move/from16 v5, p6

    :cond_1
    iget-object v6, p3, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6, p1, v5}, Landroid/telephony/MultiSimPhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildEntry: isEmergency = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    :cond_3
    iput-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iput-boolean v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    return-object v0

    :cond_4
    iget-boolean v6, p3, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v6, :cond_5

    iget-object v6, p3, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    iget-object v4, p3, Lcom/android/incallui/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    iget-wide v6, p3, Lcom/android/incallui/CallerInfo;->person_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020478

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_6
    :goto_1
    const-string v6, "ctc_cdma_smc_fac_req"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "usa_cdma_smc_fac_req"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "feature_kdi"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_7
    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    const v8, 0x7f090011

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    const v8, 0x7f09000f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/incallui/ContactInfoCache;->getDefaultPhotoDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_0

    :cond_9
    sget v6, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    if-eq p4, v6, :cond_6

    invoke-direct {p0, p1}, Lcom/android/incallui/ContactInfoCache;->getDefaultPhotoDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    :cond_a
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, p3, Lcom/android/incallui/CallerInfo;->person_id:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- got personUri: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', based on info.person_id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p3, Lcom/android/incallui/CallerInfo;->person_id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableIMSConferenceInfo()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020478

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_b
    :goto_2
    iget-wide v6, p3, Lcom/android/incallui/CallerInfo;->person_id:J

    invoke-direct {p0, p1, v6, v7}, Lcom/android/incallui/ContactInfoCache;->getPresenceMode(Landroid/content/Context;J)I

    move-result v6

    iput v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presenceMode:I

    goto/16 :goto_0

    :cond_c
    if-nez v2, :cond_d

    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v7, "personUri is null. Just use unknown picture."

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020478

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    :cond_d
    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personUri:Landroid/net/Uri;

    goto :goto_2
.end method

.method private clearCallbacks(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private findInfoQueryComplete(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/incallui/CallerInfo;ZZ)V
    .locals 10

    const/4 v9, 0x1

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "findInfoQueryComplete"

    invoke-static {v0, v1, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCallId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getSimId()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getNumberPresentation()I

    move-result v4

    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v4, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    :cond_1
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/android/incallui/EcidClient;->addContact(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/ContactInfoCache;->buildEntry(Landroid/content/Context;ILcom/android/incallui/CallerInfo;IZI)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v7

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_7

    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-nez v0, :cond_3

    iget-object v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup. Local contacts miss, checking remote"

    invoke-static {v0, v1, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v8, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;

    invoke-direct {v8, p0, v2}, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;-><init>(Lcom/android/incallui/ContactInfoCache;I)V

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    iget-object v1, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-interface {v0, v1, v8, v8, p3}, Lcom/android/incallui/service/PhoneNumberService;->getPhoneNumberInfo(Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;Z)V

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/ContactInfoCache;->setDefaultphoto(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, v2, v7}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup. Local contact found, starting image load"

    invoke-static {v0, v1, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v3, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personUri:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v1, v3, p0, v5}, Lcom/android/incallui/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v7}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p2, Lcom/android/incallui/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup done. Local contact found, no image."

    invoke-static {v0, v1, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/ContactInfoCache;->setDefaultphoto(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, v2, v7}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, v2}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(I)V

    goto :goto_0

    :cond_5
    iget-object v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup done. Special contact type."

    invoke-static {v0, v1, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup done. Local contact not found and no remote lookup service available."

    invoke-static {v0, v1, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    :cond_7
    invoke-direct {p0, v2, v7}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0
.end method

.method private getDefaultPhotoDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const v5, 0x7f02047a

    const v6, 0x7f020174

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020478

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    :goto_0
    const-string v4, "default_image"

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setImagePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultPhotoDrawable orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iput-boolean v7, p0, Lcom/android/incallui/ContactInfoCache;->mIsLandScapeDefaultImage:Z

    :cond_1
    return-object v1

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02016b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_7

    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "att_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v4, "QCIF"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020173

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkModeOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02047b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;
    .locals 2

    const-class v1, Lcom/android/incallui/ContactInfoCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/ContactInfoCache;

    invoke-direct {v0, p0}, Lcom/android/incallui/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    :cond_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPresenceMode(Landroid/content/Context;J)I
    .locals 9

    const/4 v8, 0x1

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v7, -0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "contact_presence"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPresenceMode for contactId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v7

    :catch_0
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private static getPresentationString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/services/telephony/common/Call;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v1, Lcom/android/services/telephony/common/Call;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static populateCacheEntry(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V
    .locals 31

    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v25, -0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v15

    const-string v28, "sip:"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_0

    const/16 v28, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    :cond_0
    const-string v28, "emergency_3lm"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/kdi/Emergency3LM;->setCallcardInfo(Lcom/android/incallui/CallerInfo;)V

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_16

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  ==> no name *or* number! displayName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v28, "cnap_supplementary_service"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    :cond_2
    const-string v28, "feature_ktt"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    const-string v28, "ims_call_message"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->CheckDisplayPLettrering()Z

    move-result v28

    if-nez v28, :cond_3

    const/4 v5, 0x0

    :cond_3
    const-string v28, "cdnip_supplementary_service"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->cdnipNumber:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->cdnipNumber:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string v28, "ims_call_message"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->callMessage:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_5

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/incallui/CallerInfo;->callMessage:Ljava/lang/String;

    :cond_5
    const-string v28, "emergency_find_lost_phone"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_6

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/InCallUtils;->changeNameForSKT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_6

    move-object v10, v13

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/incallui/CallerInfo;->originPhoneNumber:Ljava/lang/String;

    :cond_6
    const-string v28, "roaming_auto_dial"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v28

    if-eqz v28, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->radNumber:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1a

    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "in roaming area - display rad number : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->radNumber:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v28, "country_detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/CountryDetector;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->radNumber:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    const-string v28, "feature_skt"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-static/range {v21 .. v21}, Lcom/android/incallui/InCallUtils;->changeNameForSKTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_9

    invoke-static/range {v21 .. v21}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v28, "+82263439000"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/incallui/CallCommandClient;->isFindService()Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    if-nez v28, :cond_8

    :cond_7
    const-string v28, "+82101521044"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1b

    :cond_8
    move-object v10, v12

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/incallui/CallerInfo;->originPhoneNumber:Ljava/lang/String;

    :cond_9
    :goto_2
    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "in roaming area - display name = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", number = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallerInfo;->isEmergencyNumber()Z

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/CallerInfo;->isVoiceMailNumber()Z

    move-result v16

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/incallui/CallerInfo;->person_id:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->originPhoneNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cnapName:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->cdnipNumber:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->callMessage:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-boolean v15, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p2

    iput-boolean v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    move-object/from16 v0, p2

    iput-boolean v14, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move-wide/from16 v0, v23

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    move/from16 v0, p3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presentation:I

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originNumber:Ljava/lang/String;

    move/from16 v0, v25

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->presenceMode:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/incallui/CallerInfo;->queryCompleted:Z

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    return-void

    :cond_b
    sget v28, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    move/from16 v0, p3

    move/from16 v1, v28

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  ==> presentation not allowed! displayName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_d

    const-string v28, "cnap_supplementary_service"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_d

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v10, v21

    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  ==> cnapName available: displayName \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\', displayNumber \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    move-object/from16 v10, v21

    if-nez p4, :cond_e

    :cond_e
    const-string v28, "country_detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/CountryDetector;

    const/16 v19, 0x0

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v19

    :cond_f
    if-eqz v19, :cond_15

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v28

    const-string v29, "MM"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_15

    const-string v8, ""

    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v29, "Hide country name for Myanmar "

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "displayLocation: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v28, "abbreviated_dialing_codes_enable"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_10

    invoke-static {v10}, Lcom/android/incallui/extension/InCallUIExtension;->isAbbreviatedDialingCodes(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_10

    invoke-static {v10}, Lcom/android/incallui/extension/InCallUIExtension;->getAbbreviatedDialingCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_10
    const-string v28, "yellowpage_callerid_info"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_11

    const/16 v27, 0x0

    const-string v28, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/incallui/YellowPageCallerid;->getYellowPageNameFromNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "populateCacheEntry yellowPageName:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_11

    move-object/from16 v9, v27

    const/16 v18, 0x65

    :cond_11
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableIMSConferenceInfo()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getNameForIMSConference()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getNumberForIMSConference()Ljava/lang/String;

    move-result-object v10

    :cond_12
    const-string v28, "fdn_contact_search"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_13

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    move/from16 v28, v0

    if-nez v28, :cond_13

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_13

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_13

    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "populateCacheEntry getNameFromFDN:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    :cond_13
    const-string v28, "feature_ltn_sdnname_display"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    move/from16 v28, v0

    if-nez v28, :cond_14

    const/16 v26, 0x0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_14

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_14

    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "populateCacheEntry getNameFromSDN:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v9, v26

    :cond_14
    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  ==>  no name; falling back to number: displayNumber \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\', displayLocation \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/incallui/CallerInfo;->geoDescription:Ljava/lang/String;

    goto/16 :goto_3

    :cond_16
    sget v28, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    move/from16 v0, p3

    move/from16 v1, v28

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v10, v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/incallui/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/incallui/CallerInfo;->numberType:I

    move/from16 v18, v0

    const-string v28, "abbreviated_dialing_codes_enable"

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_18

    invoke-static {v10}, Lcom/android/incallui/extension/InCallUIExtension;->isAbbreviatedDialingCodes(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_18

    invoke-static {v10}, Lcom/android/incallui/extension/InCallUIExtension;->getAbbreviatedDialingCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_18
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableIMSConferenceInfo()Z

    move-result v28

    if-eqz v28, :cond_19

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getNameForIMSConference()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getNumberForIMSConference()Ljava/lang/String;

    move-result-object v10

    :cond_19
    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\', displayNumber \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    sget-object v28, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v29, "in roaming area - display rad number is null"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_1

    :cond_1b
    move-object v9, v12

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2
.end method

.method private sendImageNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onImageLoadComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendInfoNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/incallui/EndCallButtonPresenter;->getInstance()Lcom/android/incallui/EndCallButtonPresenter;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/EndCallButtonPresenter;->getInstance()Lcom/android/incallui/EndCallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/EndCallButtonPresenter;->requestUpdateDueToContactQuery(I)V

    :cond_1
    return-void
.end method

.method private setDefaultphoto(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/ContactInfoCache;->getDefaultPhotoDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    const-string v0, "clearCache()"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    if-ne v4, v7, :cond_2

    move v4, v5

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCallId()I

    move-result v2

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v7, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Contact lookup. In memory cache hit; lookup "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_3

    const-string v4, "complete"

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableIMSConferenceInfo()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v7, "The cache is not used."

    invoke-static {v4, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_7

    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v6, "If the entry already exists, add callback"

    invoke-static {v4, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    const-string v4, "still running"

    goto :goto_1

    :cond_4
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "att_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "volte_jpn_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-boolean v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/incallui/ContactInfoCache;->getDefaultPhotoDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    :cond_6
    invoke-interface {p3, v2, v0}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    if-nez v1, :cond_0

    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v6, "If no other callbacks are in flight, we\'re done."

    invoke-static {v4, v6, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2

    :cond_7
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v7, "Contact lookup. In memory cache miss; searching provider."

    invoke-static {v4, v7, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;

    invoke-direct {v5, p0, p2}, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;-><init>(Lcom/android/incallui/ContactInfoCache;Z)V

    invoke-static {v4, p1, v5}, Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableIMSConferenceInfo()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1, v3, p2, v6}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/incallui/CallerInfo;ZZ)V

    goto :goto_2
.end method

.method public getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image load complete with context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v3, "Image Load received for empty search entry."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(I)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "setting photo for entry: "

    invoke-static {p0, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const-string v3, "direct drawable: "

    invoke-static {p0, v3, p2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/ContactInfoCache;->sendImageNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(I)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string v3, "photo icon: "

    invoke-static {p0, v3, p3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "unknown photo"

    invoke-static {p0, v3, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/incallui/ContactInfoCache;->getDefaultPhotoDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public updateDefaultCachePhoto(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/services/telephony/common/CallIdentification;->getCallId()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/ContactInfoCache;->getDefaultPhotoDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method
