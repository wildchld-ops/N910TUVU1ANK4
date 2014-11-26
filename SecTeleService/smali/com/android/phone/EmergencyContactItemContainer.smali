.class public Lcom/android/phone/EmergencyContactItemContainer;
.super Landroid/widget/LinearLayout;
.source "EmergencyContactItemContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyContactItemContainer$1;,
        Lcom/android/phone/EmergencyContactItemContainer$ItemType;,
        Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;,
        Lcom/android/phone/EmergencyContactItemContainer$ScreenType;
    }
.end annotation


# static fields
.field public static isContactItemExist:Z

.field private static isNoService:Z


# instance fields
.field private final EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

.field private final EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

.field public final EMERGENCY_ITEM_COUNT:I

.field private final EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

.field private final INVALID_ID:I

.field private final INVALID_LONG_ID:J

.field private final LOG_TAG:Ljava/lang/String;

.field public contact_id:[J

.field public mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

.field public mItems:[Lcom/android/phone/EmergencyContactItem;

.field private mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    sput-boolean v0, Lcom/android/phone/EmergencyContactItemContainer;->isContactItemExist:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "EmergencyContactItemContainer"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->INVALID_LONG_ID:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->INVALID_ID:I

    const-string v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    const-string v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    const-string v0, "shared_pref_emergency_contact_delete_mode"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    iput v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_COUNT:I

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    new-array v0, v2, [Lcom/android/phone/EmergencyContactItem;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "EmergencyContactItemContainer"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->INVALID_LONG_ID:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->INVALID_ID:I

    const-string v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    const-string v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    const-string v0, "shared_pref_emergency_contact_delete_mode"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    iput v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_COUNT:I

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    new-array v0, v2, [Lcom/android/phone/EmergencyContactItem;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "EmergencyContactItemContainer"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->INVALID_LONG_ID:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->INVALID_ID:I

    const-string v0, "shared_pref_emergency_contact_item_checked"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_CHECKED_SHAREDPREF:Ljava/lang/String;

    const-string v0, "shared_pref_emergency_contact_screen_type"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_NORMAL_TYPE_SHAREDPREF:Ljava/lang/String;

    const-string v0, "shared_pref_emergency_contact_delete_mode"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_DELETE_MODE_SHAREDPREF:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    iput v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->EMERGENCY_ITEM_COUNT:I

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    new-array v0, v2, [Lcom/android/phone/EmergencyContactItem;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x4

    const-string v2, "EmergencyContactItemContainer"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EmergencyContactItem;

    aput-object v2, v3, v0

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/android/phone/EmergencyContactItem;->setParent(Lcom/android/phone/EmergencyContactItemContainer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v4, [Landroid/view/View;

    const/4 v2, 0x0

    const v3, 0x7f0a00e7

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0a00e8

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0a00e9

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0a00ea

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private sendTouchEvent(ILandroid/view/View;)V
    .locals 9
    .param p1    # I
    .param p2    # Landroid/view/View;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v7, 0x0

    move v4, p1

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    if-eqz p2, :cond_0

    invoke-virtual {p2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method


# virtual methods
.method public getEmergencyContactExist()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/phone/EmergencyContactItemContainer;->isContactItemExist:Z

    goto :goto_0
.end method

.method public getScreenType()Lcom/android/phone/EmergencyContactItemContainer$ScreenType;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    return-object v0
.end method

.method public makeEmergencyContactQuery()V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "EmergencyContactItemContainer"

    const-string v7, "makeEmergencyContactQuery"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phoneMgrs:[Lcom/android/phone/PhoneInterfaceManager;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSimForVoiceCalls()I

    move-result v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    :cond_0
    if-nez v3, :cond_7

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v6

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    sput-boolean v6, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    :cond_4
    const-string v4, "safety_emergency_service"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;-><init>(Lcom/android/phone/EmergencyContactItemContainer;Landroid/content/ContentResolver;)V

    sget-object v5, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v4, v5}, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->startQuery(Lcom/android/phone/EmergencyContactItemContainer$ItemType;)V

    :cond_5
    sget-boolean v4, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    if-nez v4, :cond_6

    new-instance v4, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;-><init>(Lcom/android/phone/EmergencyContactItemContainer;Landroid/content/ContentResolver;)V

    sget-object v5, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v4, v5}, Lcom/android/phone/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->startQuery(Lcom/android/phone/EmergencyContactItemContainer$ItemType;)V

    :cond_6
    return-void

    :cond_7
    move v4, v6

    goto :goto_0
.end method

.method public notifyCheckChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyDialer;->notifyCheckChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1    # Landroid/view/View;

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v7, "EmergencyContactItemContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onClick(View.getId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v7, "feature_kor"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "true"

    const-string v10, "ril.domesticOtaStart"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_4

    move v7, v8

    :goto_0
    sput-boolean v7, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v7

    if-le v7, v9, :cond_5

    const-string v7, "gsm.sim.state"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "gsm.sim.state2"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "PIN_REQUIRED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "PUK_REQUIRED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "PIN_REQUIRED"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "PUK_REQUIRED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    sput-boolean v9, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    if-ge v4, v7, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    sget-boolean v7, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    if-ne v7, v9, :cond_3

    if-nez v3, :cond_3

    sput-boolean v8, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v7, v9

    goto :goto_0

    :cond_5
    const-string v7, "feature_chn_duos"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "feature_ctc"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    const-string v7, "feature_chn_duos_twochip_dsds"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v7, v8

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v7, v7, v9

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v1, :cond_8

    if-nez v2, :cond_b

    :cond_8
    move v7, v8

    :goto_2
    sput-boolean v7, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    :cond_9
    sget-boolean v7, Lcom/android/phone/EmergencyContactItemContainer;->isNoService:Z

    if-nez v7, :cond_a

    if-eqz v0, :cond_c

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090738

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/EmergencyContactItemContainer;->displayToast(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_b
    move v7, v9

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v7, v7, v8

    invoke-virtual {v7, v8}, Lcom/android/phone/EmergencyContactItem;->updateEmergencyContact(I)V

    goto :goto_3

    :pswitch_1
    iget-object v7, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v7, v7, v9

    invoke-virtual {v7, v9}, Lcom/android/phone/EmergencyContactItem;->updateEmergencyContact(I)V

    goto :goto_3

    :pswitch_2
    iget-object v7, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v7, v7, v12

    invoke-virtual {v7, v12}, Lcom/android/phone/EmergencyContactItem;->updateEmergencyContact(I)V

    goto :goto_3

    :pswitch_3
    iget-object v7, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v7, v7, v13

    invoke-virtual {v7, v13}, Lcom/android/phone/EmergencyContactItem;->updateEmergencyContact(I)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00e7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItemContainer;->init()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v5, 0x1

    const/4 v0, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :cond_0
    :goto_1
    const/4 v1, 0x0

    return v1

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/phone/EmergencyContactItem;->getItemId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Lcom/android/phone/EmergencyContactItem;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyDialer;->getDummyListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    sget-object v2, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyDialer;->getDummyListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->twShowMultiChoiceMode(Z)V

    invoke-virtual {p1, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/phone/EmergencyContactItemContainer;->sendTouchEvent(ILandroid/view/View;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0a00e7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a00e7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public removeContacts(Z)V
    .locals 6
    .param p1    # Z

    const-string v4, "EmergencyContactItemContainer"

    const-string v5, "removeContacts : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/phone/EmergencyContactItem;->removeEmergencyContact(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09038c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyContactItemContainer;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 5

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItem;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    return-void
.end method

.method public restoreContainerState()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "EmergencyContactItemContainer"

    const-string v5, "restoreContainerState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "shared_pref_emergency_contact_screen_type"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v4, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/phone/EmergencyContactItemContainer;->setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v4, v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shared_pref_emergency_contact_item_checked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/phone/EmergencyContactItem;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    goto :goto_0

    :cond_1
    const-string v4, "shared_pref_emergency_contact_delete_mode"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v4, v8}, Lcom/android/phone/EmergencyDialer;->setMultimode(Z)V

    iget-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v4, v0}, Lcom/android/phone/EmergencyDialer;->setDeleteModeFromMenu(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v4, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v4}, Lcom/android/phone/EmergencyDialer;->notifyCheckChanged()V

    :cond_3
    return-void
.end method

.method public setContactsId()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, -0x1

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_contact_position_zero"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    aput-wide v1, v0, v5

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_contact_position_one"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    aput-wide v1, v0, v6

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_contact_position_two"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    aput-wide v1, v0, v7

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_contact_position_three"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    aput-wide v1, v0, v8

    const-string v0, "EmergencyContactItemContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContactsId : id[0]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    aget-wide v2, v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",id[1]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    aget-wide v2, v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",id[2]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    aget-wide v2, v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",id[3]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItemContainer;->contact_id:[J

    aget-wide v2, v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEmergencyContactExist(Z)V
    .locals 3
    .param p1    # Z

    sput-boolean p1, Lcom/android/phone/EmergencyContactItemContainer;->isContactItemExist:Z

    const-string v0, "EmergencyContactItemContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isContactItemExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/EmergencyContactItemContainer;->isContactItemExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEmergencyDialerInstance(Lcom/android/phone/EmergencyDialer;)V
    .locals 0
    .param p1    # Lcom/android/phone/EmergencyDialer;

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    return-void
.end method

.method public setScreenType(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V
    .locals 3
    .param p1    # Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    const-string v0, "EmergencyContactItemContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItemContainer;->updateContactItemContainer()V

    return-void
.end method

.method public storeContainerState()V
    .locals 8

    const/4 v5, 0x0

    const-string v6, "EmergencyContactItemContainer"

    const-string v7, "storeContainerState"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v6}, Lcom/android/phone/EmergencyDialer;->getDeleteModeFromMenu()Z

    move-result v0

    const-string v6, "shared_pref_emergency_contact_delete_mode"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItemContainer;->getScreenType()Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    move-result-object v6

    sget-object v7, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    if-ne v6, v7, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string v6, "shared_pref_emergency_contact_screen_type"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v2, v6, :cond_2

    if-nez v3, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shared_pref_emergency_contact_item_checked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/android/phone/EmergencyContactItem;->isChecked()Z

    move-result v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez v3, :cond_3

    iget-object v6, p0, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v6, v5}, Lcom/android/phone/EmergencyDialer;->setMultimode(Z)V

    :cond_3
    return-void
.end method

.method public updateContactItemContainer()V
    .locals 9

    const-string v5, "EmergencyContactItemContainer"

    const-string v6, "updateContactItemContainer : "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/phone/EmergencyContactItemContainer;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v3, v5}, Lcom/android/phone/EmergencyContactItem;->updateContactItem(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyContactItemContainer;->setEmergencyContactExist(Z)V

    const/4 v1, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/EmergencyContactItem;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/phone/EmergencyContactItem;->getItemId()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/phone/EmergencyContactItemContainer;->setEmergencyContactExist(Z)V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
