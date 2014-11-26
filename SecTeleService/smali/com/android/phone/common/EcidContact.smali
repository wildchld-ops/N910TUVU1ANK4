.class public Lcom/android/phone/common/EcidContact;
.super Ljava/lang/Object;
.source "EcidContact.java"


# static fields
.field static COLUMN_CITY:I

.field static COLUMN_COMPANY:I

.field static COLUMN_COUNT:I

.field static COLUMN_COUNTRY:I

.field static COLUMN_FIRST_NAME:I

.field static COLUMN_FRIENDS:I

.field static COLUMN_ID:I

.field static COLUMN_IMAGE:I

.field static COLUMN_LAST_NAME:I

.field static COLUMN_NAME:I

.field static COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

.field static COLUMN_NUMBER:I

.field static COLUMN_PREFER_CID_IMAGE:I

.field static COLUMN_SAME_NETWORK:I

.field static COLUMN_STATE:I

.field static COLUMN_STATE_ABBR:I

.field private static final CONTENT_URI:Landroid/net/Uri;

.field static m_mapEcidContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/common/EcidContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m_bFriends:Z

.field public m_bNoOutgoingCallRestriction:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_callerId:Ljava/lang/String;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_isNanp:Z

.field public m_lastName:Ljava/lang/String;

.field public m_number:Ljava/lang/String;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;

.field public m_urlPicture:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.cequint.ecid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/common/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/common/EcidContact;->m_isNanp:Z

    iput-boolean v0, p0, Lcom/android/phone/common/EcidContact;->m_bNoOutgoingCallRestriction:Z

    return-void
.end method

.method public static clearEcidContacts()V
    .locals 2

    sget-object v1, Lcom/android/phone/common/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/common/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/phone/common/EcidContact;
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v2, 0x0

    const-string v1, "EcidContact"

    const-string v3, "ECID AOSP VERSION: 2.3.6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/phone/common/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/android/phone/common/EcidContact;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/phone/common/EcidContact;

    invoke-direct {v0}, Lcom/android/phone/common/EcidContact;-><init>()V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/common/EcidContact;->m_number:Ljava/lang/String;

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/phone/common/EcidContact;->implLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    sget-object v1, Lcom/android/phone/common/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_number:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLookup Invalid Args: ctx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/common/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/android/phone/common/EcidContact;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_stateName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_stateName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    iput-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    :cond_3
    iget-object v1, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/phone/common/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/common/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_countryName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_countryName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getEcidContact(Ljava/lang/String;)Lcom/android/phone/common/EcidContact;
    .locals 3
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/phone/common/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/EcidContact;

    return-object v1
.end method

.method static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/database/Cursor;
    .param p1    # I

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static readColumnIds(Landroid/database/Cursor;)V
    .locals 1
    .param p0    # Landroid/database/Cursor;

    const-string v0, "_ID"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_ID:I

    const-string v0, "_COUNT"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_COUNT:I

    const-string v0, "cid_pNumber"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_NUMBER:I

    const-string v0, "cid_pCityName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_CITY:I

    const-string v0, "cid_pStateName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_STATE:I

    const-string v0, "cid_pStateAbbr"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_STATE_ABBR:I

    const-string v0, "cid_pCountryName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_COUNTRY:I

    const-string v0, "cid_pCompany"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_COMPANY:I

    const-string v0, "cid_pName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_NAME:I

    const-string v0, "cid_pFirstName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_FIRST_NAME:I

    const-string v0, "cid_pLastName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_LAST_NAME:I

    const-string v0, "cid_pImage"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_IMAGE:I

    const-string v0, "cid_bSameNetwork"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_SAME_NETWORK:I

    const-string v0, "cid_bFriends"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_FRIENDS:I

    const-string v0, "cid_bPreferCidImage"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_PREFER_CID_IMAGE:I

    const-string v0, "cid_bNoOutgoingCallRestriction"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    return-void
.end method


# virtual methods
.method public getBizName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/EcidContact;->m_bizName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/EcidContact;->m_cname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/common/EcidContact;->m_cname:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/android/phone/common/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/common/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "EcidContact"

    const-string v3, "null Contact First Name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLastName()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/android/phone/common/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/common/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "EcidContact"

    const-string v3, "null Contact Last Name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public implLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # Z
    .param p4    # Z

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p4, :cond_2

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    if-eqz p3, :cond_1

    const-string v1, "system"

    :goto_0
    aput-object v1, v4, v8

    const-string v1, "NOT-NANP"

    aput-object v1, v4, v7

    :goto_1
    if-nez p4, :cond_4

    move v1, v7

    :goto_2
    iput-boolean v1, p0, Lcom/android/phone/common/EcidContact;->m_isNanp:Z

    sget-object v1, Lcom/android/phone/common/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6}, Lcom/android/phone/common/EcidContact;->readColumnIds(Landroid/database/Cursor;)V

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_NUMBER:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_callerId:Ljava/lang/String;

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_CITY:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_cityName:Ljava/lang/String;

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_STATE:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_stateName:Ljava/lang/String;

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_STATE_ABBR:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_stateAbbr:Ljava/lang/String;

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_COUNTRY:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_countryName:Ljava/lang/String;

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_COMPANY:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_bizName:Ljava/lang/String;

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_NAME:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_cname:Ljava/lang/String;

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_FIRST_NAME:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_firstName:Ljava/lang/String;

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_LAST_NAME:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_lastName:Ljava/lang/String;

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_IMAGE:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_urlPicture:Ljava/lang/String;

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_SAME_NETWORK:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v7

    :goto_3
    iput-boolean v1, p0, Lcom/android/phone/common/EcidContact;->m_bSameNetwork:Z

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_FRIENDS:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v7

    :goto_4
    iput-boolean v1, p0, Lcom/android/phone/common/EcidContact;->m_bFriends:Z

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_PREFER_CID_IMAGE:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v7

    :goto_5
    iput-boolean v1, p0, Lcom/android/phone/common/EcidContact;->m_bPreferCidImage:Z

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    if-ltz v1, :cond_0

    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_8

    :goto_6
    iput-boolean v7, p0, Lcom/android/phone/common/EcidContact;->m_bNoOutgoingCallRestriction:Z

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :goto_7
    return-void

    :cond_1
    const-string v1, "user"

    goto/16 :goto_0

    :cond_2
    new-array v4, v7, [Ljava/lang/String;

    if-eqz p3, :cond_3

    const-string v1, "system"

    :goto_8
    aput-object v1, v4, v8

    goto/16 :goto_1

    :cond_3
    const-string v1, "user"

    goto :goto_8

    :cond_4
    move v1, v8

    goto/16 :goto_2

    :cond_5
    move v1, v8

    goto :goto_3

    :cond_6
    move v1, v8

    goto :goto_4

    :cond_7
    move v1, v8

    goto :goto_5

    :cond_8
    move v7, v8

    goto :goto_6

    :cond_9
    const-string v1, "EcidContact"

    const-string v2, "No CityID found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
