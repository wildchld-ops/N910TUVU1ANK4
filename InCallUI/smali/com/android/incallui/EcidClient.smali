.class public Lcom/android/incallui/EcidClient;
.super Ljava/lang/Object;
.source "EcidClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/EcidClient$Listener;,
        Lcom/android/incallui/EcidClient$EcidContentObserver;,
        Lcom/android/incallui/EcidClient$EcidLookupQueryHandler;
    }
.end annotation


# static fields
.field private static ecidObserver:Lcom/android/incallui/EcidClient$EcidContentObserver;

.field private static mNameIDLogo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private static m_IncomingCalls:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static m_contacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static m_lookupId:I

.field private static m_mapLookupsInProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/incallui/EcidClient;",
            ">;"
        }
    .end annotation
.end field

.field private static observerCr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ecidLookupHandler:Lcom/android/incallui/EcidClient$EcidLookupQueryHandler;

.field public m_CallId:J

.field public m_bFriends:Z

.field public m_bIncomingCall:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

.field private m_call:Lcom/android/services/telephony/common/Call;

.field public m_callerId:Ljava/lang/String;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_cnapDelivered:Z

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_ecidPictureUsed:Z

.field public m_firstName:Ljava/lang/String;

.field public m_isCityIdCurrentlyDisplayed:Z

.field public m_isDisplayOneLine:Z

.field public m_lastName:Ljava/lang/String;

.field private m_listener:Lcom/android/incallui/EcidClient$Listener;

.field public m_lookupCompleted:Z

.field public m_nFlags:I

.field private m_ownerCtx:Ljava/lang/ref/WeakReference;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/EcidClient;->m_lookupId:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/EcidClient;->ecidObserver:Lcom/android/incallui/EcidClient$EcidContentObserver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/incallui/EcidClient;->m_IncomingCalls:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/incallui/EcidClient;->m_contacts:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/EcidClient;->m_ecidPictureUsed:Z

    iput-object v1, p0, Lcom/android/incallui/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcom/android/incallui/EcidClient;->m_isDisplayOneLine:Z

    iput-boolean v0, p0, Lcom/android/incallui/EcidClient;->m_isCityIdCurrentlyDisplayed:Z

    iput-object v1, p0, Lcom/android/incallui/EcidClient;->m_tvOneLineDisplay:Landroid/widget/TextView;

    iput-boolean v0, p0, Lcom/android/incallui/EcidClient;->m_bIncomingCall:Z

    iput-boolean v0, p0, Lcom/android/incallui/EcidClient;->m_cnapDelivered:Z

    iput-boolean v0, p0, Lcom/android/incallui/EcidClient;->m_lookupCompleted:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/EcidClient;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/EcidClient;)Lcom/android/incallui/EcidClient$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EcidClient;->m_listener:Lcom/android/incallui/EcidClient$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/EcidClient;)Lcom/android/services/telephony/common/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/EcidClient;->m_call:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$404()I
    .locals 1

    sget v0, Lcom/android/incallui/EcidClient;->m_lookupId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/incallui/EcidClient;->m_lookupId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/EcidClient;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/incallui/EcidClient;->executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public static addContact(I)V
    .locals 2

    sget-object v0, Lcom/android/incallui/EcidClient;->m_contacts:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static clearAllCalls()V
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Lcom/android/incallui/EcidClient;->m_IncomingCalls:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    sget-object v2, Lcom/android/incallui/EcidClient;->m_contacts:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v2, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sget-object v2, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    sput-object v3, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    :cond_2
    sget-object v2, Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/EcidClient;

    if-eqz v0, :cond_3

    iput-object v3, v0, Lcom/android/incallui/EcidClient;->m_listener:Lcom/android/incallui/EcidClient$Listener;

    iput-object v3, v0, Lcom/android/incallui/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    iget-object v2, v0, Lcom/android/incallui/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/incallui/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, v0, Lcom/android/incallui/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v2, v0, Lcom/android/incallui/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/incallui/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v3, v0, Lcom/android/incallui/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/android/incallui/EcidClient;->unRegisterObserverIfNeeded()V

    return-void
.end method

.method private static decodeBitmapFromUrl(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v1, 0x2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method private executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/EcidClient;->ecidLookupHandler:Lcom/android/incallui/EcidClient$EcidLookupQueryHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/EcidClient$EcidLookupQueryHandler;

    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/EcidClient$EcidLookupQueryHandler;-><init>(Lcom/android/incallui/EcidClient;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/incallui/EcidClient;->ecidLookupHandler:Lcom/android/incallui/EcidClient$EcidLookupQueryHandler;

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

    iget-object v0, p0, Lcom/android/incallui/EcidClient;->ecidLookupHandler:Lcom/android/incallui/EcidClient$EcidLookupQueryHandler;

    const-string v1, "content://com.cequint.ecid/incalllookup"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move v1, p1

    move-object v4, v2

    move-object v5, p2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getCityId(Lcom/android/services/telephony/common/Call;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/EcidClient;->getClient(I)Lcom/android/incallui/EcidClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/android/incallui/EcidClient;->getCityStateString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCityStateString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/16 v2, 0x14

    const-string v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x12

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/android/incallui/EcidClient;->m_cityName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/EcidClient;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/EcidClient;->m_stateName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/android/incallui/EcidClient;->m_stateName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/EcidClient;->m_countryName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/incallui/EcidClient;->m_countryName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getClient(I)Lcom/android/incallui/EcidClient;
    .locals 2

    sget-object v0, Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/EcidClient;

    return-object v0
.end method

.method private static isContact(I)Z
    .locals 2

    sget-object v0, Lcom/android/incallui/EcidClient;->m_contacts:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIncoming(I)Z
    .locals 2

    sget-object v0, Lcom/android/incallui/EcidClient;->m_IncomingCalls:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/incallui/EcidClient;->m_IncomingCalls:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static onCallStateChange(Lcom/android/services/telephony/common/Call;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/EcidClient;->getClient(I)Lcom/android/incallui/EcidClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/EcidClient;->m_listener:Lcom/android/incallui/EcidClient$Listener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/incallui/EcidClient;->m_listener:Lcom/android/incallui/EcidClient$Listener;

    invoke-interface {v1, p0}, Lcom/android/incallui/EcidClient$Listener;->onUpdate(Lcom/android/services/telephony/common/Call;)V

    :cond_0
    return-void
.end method

.method public static startEcidLookupQuery(Lcom/android/services/telephony/common/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/EcidClient$Listener;)V
    .locals 10

    const/4 v9, 0x1

    const-string v1, "Phone-ECID"

    const-string v5, "ECID AOSP VERSION: 1.4.4.0"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_2

    iget-boolean v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/EcidClient;->getClient(I)Lcom/android/incallui/EcidClient;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/android/incallui/EcidClient;->m_cnapDelivered:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/EcidClient;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Phone-ECID"

    const-string v5, "-is incoming"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v4, v4, 0x20

    or-int/lit8 v4, v4, 0x2

    :goto_1
    new-instance v0, Lcom/android/incallui/EcidClient;

    invoke-direct {v0}, Lcom/android/incallui/EcidClient;-><init>()V

    iput-object v2, v0, Lcom/android/incallui/EcidClient;->m_phoneNumber:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/incallui/EcidClient;->m_listener:Lcom/android/incallui/EcidClient$Listener;

    iput-object p0, v0, Lcom/android/incallui/EcidClient;->m_call:Lcom/android/services/telephony/common/Call;

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    int-to-long v7, v1

    iput-wide v7, v0, Lcom/android/incallui/EcidClient;->m_CallId:J

    iput v4, v0, Lcom/android/incallui/EcidClient;->m_nFlags:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/incallui/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/EcidClient;->m_cnapDelivered:Z

    const-string v1, "Phone-ECID"

    const-string v5, "starting new lookup query"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    sget-object v1, Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    :goto_2
    sget v1, Lcom/android/incallui/EcidClient;->m_lookupId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/incallui/EcidClient;->m_lookupId:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/EcidClient;->executeLookupQuery(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    sget-object v1, Lcom/android/incallui/EcidClient;->ecidObserver:Lcom/android/incallui/EcidClient$EcidContentObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/incallui/EcidClient$EcidContentObserver;

    invoke-direct {v1}, Lcom/android/incallui/EcidClient$EcidContentObserver;-><init>()V

    sput-object v1, Lcom/android/incallui/EcidClient;->ecidObserver:Lcom/android/incallui/EcidClient$EcidContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v1, "content://com.cequint.ecid/incalllookup"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v5, Lcom/android/incallui/EcidClient;->ecidObserver:Lcom/android/incallui/EcidClient$EcidContentObserver;

    invoke-virtual {v6, v1, v9, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/incallui/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    goto/16 :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/incallui/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/incallui/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    iget-boolean v1, v0, Lcom/android/incallui/EcidClient;->m_lookupCompleted:Z

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    invoke-interface {p3, p0}, Lcom/android/incallui/EcidClient$Listener;->onUpdate(Lcom/android/services/telephony/common/Call;)V

    goto/16 :goto_0

    :cond_5
    or-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    iput-boolean v9, v0, Lcom/android/incallui/EcidClient;->m_cnapDelivered:Z

    goto :goto_2
.end method

.method private static unRegisterObserverIfNeeded()V
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lcom/android/incallui/EcidClient;->m_mapLookupsInProcess:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/EcidClient;->ecidObserver:Lcom/android/incallui/EcidClient$EcidContentObserver;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/incallui/EcidClient;->ecidObserver:Lcom/android/incallui/EcidClient$EcidContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    sput-object v2, Lcom/android/incallui/EcidClient;->observerCr:Ljava/lang/ref/WeakReference;

    sput-object v2, Lcom/android/incallui/EcidClient;->ecidObserver:Lcom/android/incallui/EcidClient$EcidContentObserver;

    :cond_1
    return-void
.end method

.method public static updateContactInfo(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method

.method public static updateContactInfo(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/common/CallIdentification;->getCallId()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/EcidClient;->getClient(I)Lcom/android/incallui/EcidClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/EcidClient;->doUpdateContactInfo(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0
.end method


# virtual methods
.method public canUpdateContactPhoto(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/incallui/EcidClient;->m_bPreferCidImage:Z

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "feature_tmo"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_0

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public doUpdateContactInfo(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/incallui/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCallId()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/EcidClient;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCallId()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/EcidClient;->isContact(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const-string v2, "Unknown Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCallId()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/EcidClient;->isContact(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    :cond_2
    :goto_1
    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "USC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/EcidClient;->getCityStateString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/EcidClient;->getCityStateString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/incallui/EcidClient;->canUpdateContactPhoto(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCallId()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/EcidClient;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/incallui/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/incallui/EcidClient;->m_ownerCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_7

    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "feature_tmo"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_5
    sget-object v1, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iput-boolean v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    :cond_6
    :goto_3
    iput-boolean v4, p0, Lcom/android/incallui/EcidClient;->m_ecidPictureUsed:Z

    :cond_7
    return-void

    :cond_8
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/EcidClient;->m_cnapDelivered:Z

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const-string v2, "Unknown Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/EcidClient;->m_displayName:Ljava/lang/String;

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/EcidClient;->m_picture:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/incallui/EcidClient;->m_cachedPictureDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    goto :goto_3
.end method

.method public getImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

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

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getImageAttOrTmo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    sget-object v2, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0, p2}, Lcom/android/incallui/EcidClient;->decodeBitmapFromUrl(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/android/incallui/EcidClient;->mNameIDLogo:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ecid Record for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/EcidClient;->m_phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/EcidClient;->m_displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", cityid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/incallui/EcidClient;->getCityStateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", picture:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/EcidClient;->m_urlPicture:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
