.class public Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;
.super Ljava/lang/Object;
.source "CallerInfoCardUtils.java"


# static fields
.field private static final mRawContactsProjection:[Ljava/lang/String;

.field private static mRegistered:Z

.field private static final mSocialNetworkServiceAccountList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.sns3.facebook"

    aput-object v1, v0, v2

    const-string v1, "com.sec.android.app.sns3.googleplus"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.app.sns3.linkedin"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mSocialNetworkServiceAccountList:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    const-string v1, "account_type_and_data_set"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sync2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mRawContactsProjection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSocialNetworkServiceLoginList(Landroid/content/Context;)I
    .locals 7
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mSocialNetworkServiceAccountList:[Ljava/lang/String;

    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v3, v4

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v6, v0

    if-lez v6, :cond_0

    const-string v6, "com.sec.android.app.sns3.googleplus"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    or-int/lit8 v2, v2, 0x2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static isDefaultSmsApp(Landroid/content/Context;)Z
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    const-string v2, "CallerInfoCardUtils"

    const-string v3, "SDK ver. >= KITKAT. defaultSmsApplication is null return false"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    const-string v1, "CallerInfoCardUtils"

    const-string v3, "SDK ver. < KITKAT. defaultSmsApplication is null return true"

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_1
    const-string v3, "com.android.mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "CallerInfoCardUtils"

    const-string v3, "DefaultSmsApp is com.android.mms"

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v2, "CallerInfoCardUtils"

    const-string v3, "default sms is not samsung\'s, return false"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isEmailLogin(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.android.email"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKeyguardSecureLocked(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CallerInfoCardUtils"

    const-string v3, "isKeyguardSecureLocked - true"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    return v1

    :cond_0
    const-string v2, "CallerInfoCardUtils"

    const-string v3, "isKeyguardSecureLocked - false"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static registers(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-boolean v0, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mRegistered:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->registerContentObserver(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->registerContentObserver(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->registerContentObserver(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/queryargs/EmailQueryArgs;->registerContentObserver(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public static sendBroadcastFacebookRequested(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sns.profile.ACTION_FACEBOOK_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendBroadcastGooglePlusRequested(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sns.profile.ACTION_GOOGLEPLUS_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "g:"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendBroadcastLinkedInRequested(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sns.profile.ACTION_LINKEDIN_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static startQuery(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4    # Z

    const-string v0, "CallerInfoCardUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQuery - type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->isKeyguardSecureLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v0, :cond_0

    iget-boolean v0, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForPersonalEvents(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForLastCallLog(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForMemo(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForMessage(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForEmail(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForSocialNetworkService(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto :goto_0
.end method

.method private static startQueryForAnniversary(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4    # Z

    const/16 v0, 0x66

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    :cond_1
    return-void
.end method

.method private static startQueryForBirthday(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4    # Z

    const/16 v0, 0x65

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    :cond_1
    return-void
.end method

.method private static startQueryForEmail(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 7
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4    # Z

    const/4 v4, 0x0

    const/16 v0, 0x259

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->isEmailLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "data1"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v0, 0x259

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    throw v0
.end method

.method private static startQueryForLastCallLog(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4    # Z

    const/16 v0, 0xc9

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    :cond_1
    return-void
.end method

.method private static startQueryForMemo(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4    # Z

    const/16 v0, 0x12d

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    const-string v1, "com.samsung.android.app.memo"

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "use_action_memo_duringcall"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.android.snote"

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    :cond_2
    return-void
.end method

.method private static startQueryForMessage(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 14
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4    # Z

    if-eqz p1, :cond_0

    const/16 v1, 0x191

    if-ne p1, v1, :cond_3

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->isDefaultSmsApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v7, 0x0

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://mms-sms/canonical-addresses"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "PHONE_NUMBERS_EQUAL(address, ?, 0)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    const-string v6, "_id DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const-wide/16 v10, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const/4 v1, -0x1

    if-eq v8, v1, :cond_1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "threads"

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "recipient_ids=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    const-string v6, "_id DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    :goto_1
    const/16 v1, 0x191

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    :try_start_1
    invoke-static/range {v1 .. v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_3
    return-void

    :catch_0
    move-exception v9

    if-eqz v7, :cond_4

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_4
    if-eqz v12, :cond_7

    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :goto_2
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_5
    throw v1

    :catchall_1
    move-exception v1

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x0

    :cond_6
    throw v1

    :cond_7
    move-object v3, v12

    goto :goto_2

    :cond_8
    move-object v3, v12

    goto :goto_0
.end method

.method private static startQueryForPersonalEvents(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4    # Z

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForBirthday(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQueryForAnniversary(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method private static startQueryForSocialNetworkService(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 9
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;
    .param p3    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4    # Z

    if-eqz p1, :cond_0

    const/16 v0, 0x2bd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2be

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c0

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->getSocialNetworkServiceLoginList(Landroid/content/Context;)I

    move-result v6

    const-string v0, "CallerInfoCardUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountLoginList : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mRawContactsProjection:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v7, 0x0

    const-string v0, "account_type_and_data_set"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_4
    if-eqz p1, :cond_5

    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    and-int/lit8 v1, v6, 0x1

    if-ne v0, v1, :cond_6

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x2bd

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    const-string v0, "sourceid"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_6

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->sendBroadcastFacebookRequested(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    const/16 v0, 0x2be

    if-ne p1, v0, :cond_8

    :cond_7
    const/4 v0, 0x2

    and-int/lit8 v1, v6, 0x2

    if-ne v0, v1, :cond_8

    const-string v0, "com.google/plus"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2be

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    const-string v0, "sourceid"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->sendBroadcastGooglePlusRequested(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    if-eqz p1, :cond_9

    const/16 v0, 0x2c0

    if-ne p1, v0, :cond_3

    :cond_9
    const/4 v0, 0x4

    and-int/lit8 v1, v6, 0x4

    if-ne v0, v1, :cond_3

    const-string v0, "com.linkedin.android"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x2c0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/database/Cursor;Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;Z)Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery;

    const-string v0, "sync2"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_3

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->sendBroadcastLinkedInRequested(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    throw v0

    :cond_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static unregisters(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-boolean v0, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mRegistered:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->unregisterContentObserver(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->unregisterContentObserver(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/queryargs/MemoQueryArgs;->unregisterContentObserver(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/incallui/callerinfocard/queryargs/EmailQueryArgs;->unregisterContentObserver(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->mRegistered:Z

    :cond_0
    return-void
.end method
