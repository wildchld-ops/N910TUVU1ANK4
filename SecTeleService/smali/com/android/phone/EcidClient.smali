.class public Lcom/android/phone/EcidClient;
.super Ljava/lang/Object;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EcidClient$EcidContentObserver;,
        Lcom/android/phone/EcidClient$EcidLookupQueryHandler;
    }
.end annotation


# static fields
.field static ecidObserver:Lcom/android/phone/EcidClient$EcidContentObserver;

.field static m_lookupId:I

.field static m_mapLookupsInProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/phone/EcidClient;",
            ">;"
        }
    .end annotation
.end field

.field static m_mapLookupsWithNumber:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/EcidClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private businessName:Ljava/lang/String;

.field ecidLookupHandler:Lcom/android/phone/EcidClient$EcidLookupQueryHandler;

.field public m_bFriends:Z

.field private m_bIncomingCall:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

.field m_callInfo:Lcom/android/internal/telephony/CallerInfo;

.field public m_callerId:Ljava/lang/String;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_cnapDelivered:Z

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_isCityIdCurrentlyDisplayed:Z

.field public m_isDisplayOneLine:Z

.field public m_lastName:Ljava/lang/String;

.field protected m_nFlags:I

.field m_ownerCtx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public m_phoneNumber:Ljava/lang/String;

.field public m_picture:Landroid/graphics/Bitmap;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;

.field public m_tvOneLineDisplay:Landroid/widget/TextView;

.field public m_urlPicture:Ljava/lang/String;

.field private strDisplay:Ljava/lang/String;

.field private strFname:Ljava/lang/String;

.field private strLname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/EcidClient;->m_lookupId:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/EcidClient;->ecidObserver:Lcom/android/phone/EcidClient$EcidContentObserver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/EcidClient;->m_mapLookupsWithNumber:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_isDisplayOneLine:Z

    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    iput-object v0, p0, Lcom/android/phone/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    iput-boolean v1, p0, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    iput-object v0, p0, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/EcidClient;->strFname:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/EcidClient;->strLname:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/EcidClient;->businessName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EcidClient;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0
    .param p0    # Lcom/android/phone/EcidClient;
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Landroid/content/Context;

    invoke-direct/range {p0 .. p5}, Lcom/android/phone/EcidClient;->executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method static callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .locals 2
    .param p0    # Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, p0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method private executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 8
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->ecidLookupHandler:Lcom/android/phone/EcidClient$EcidLookupQueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;

    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;-><init>(Lcom/android/phone/EcidClient;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/EcidClient;->ecidLookupHandler:Lcom/android/phone/EcidClient$EcidLookupQueryHandler;

    :cond_0
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v6, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    iget-object v0, p0, Lcom/android/phone/EcidClient;->ecidLookupHandler:Lcom/android/phone/EcidClient$EcidLookupQueryHandler;

    const-string v1, "content://com.cequint.ecid/incalllookup"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move v1, p1

    move-object v4, v2

    move-object v5, p2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EcidClient$EcidLookupQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static updateCallerInfoMapping(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    invoke-static {p1}, Lcom/android/phone/EcidClient;->callerInfoFromObject(Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v6, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    if-nez v3, :cond_2

    :cond_0
    const-string v6, "Phone-ECID"

    const-string v7, "updateCallerInfoMapping: Cannot Map due to the empty phone number."

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/phone/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/EcidClient;

    if-eqz v5, :cond_4

    iget-object v6, v5, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    if-ne v6, v1, :cond_3

    const-string v6, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCallerInfoMapping: Found mapping: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v5, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    :cond_4
    const-string v6, "Phone-ECID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateCallerInfoMapping: No current mapping for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Cannot Map."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public canUpdateContactPhoto()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: no picture"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bPreferCidImage:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_1

    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: use contact photo && photo exist && isCachedPhotoCurrent"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_2

    const-string v1, "Phone-ECID"

    const-string v2, "canUpdateContactPhoto: contact photo exist"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const-string v4, "Phone-ECID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting image from URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EcidClient;->strDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public updateCallerInfo(Landroid/content/Context;)Z
    .locals 5
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "Phone-ECID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_callInfo.name updated with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_1
    :goto_0
    const-string v1, "Phone-ECID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_bIncomingCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m_callInfo.name= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/EcidClient;->canUpdateContactPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_bIncomingCall:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/phone/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    const-string v1, "Phone-ECID"

    const-string v2, "Set ECID pictures done"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/phone/EcidClient;->m_cnapDelivered:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    const-string v2, "Unknown Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    const-string v2, "Wireless Caller"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_4
    const-string v1, "Phone-ECID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "both m_callInfo.name updated for Unknown Name || Wireless Caller"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/EcidClient;->m_callInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, p0, Lcom/android/phone/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    const/4 v0, 0x1

    goto/16 :goto_0
.end method
