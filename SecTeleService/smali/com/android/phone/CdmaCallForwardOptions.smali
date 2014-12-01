.class public Lcom/android/phone/CdmaCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CdmaCallForwardOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallForwardOptions$5;,
        Lcom/android/phone/CdmaCallForwardOptions$AppState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

.field private mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mCFBDataStale:Z

.field private mCFDataStale:Z

.field private mCFNRcDataStale:Z

.field private mCFNRyDataStale:Z

.field private mCFUDataStale:Z

.field private mCancelDataStale:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mDialingNumCFB:Ljava/lang/String;

.field private mDialingNumCFNRc:Ljava/lang/String;

.field private mDialingNumCFNRy:Ljava/lang/String;

.field private mDialingNumCFU:Ljava/lang/String;

.field private mDisplayMode:I

.field private mGetAllCFOptionsComplete:Landroid/os/Handler;

.field private mIsBusyDialogAvailable:Z

.field private mMoreDataStale:Z

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSetState_check:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mpreference:Landroid/preference/Preference;

.field private mpreferenceint:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->SRC_TAGS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mMoreDataStale:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallForwardOptions$2;-><init>(Lcom/android/phone/CdmaCallForwardOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallForwardOptions$3;-><init>(Lcom/android/phone/CdmaCallForwardOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    .locals 0
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;
    .param p1    # Lcom/android/phone/CdmaCallForwardOptions$AppState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaCallForwardOptions;)I
    .locals 1
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;

    iget v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaCallForwardOptions;)V
    .locals 0
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;

    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->queryAllCFOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CdmaCallForwardOptions;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CdmaCallForwardOptions;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CdmaCallForwardOptions;Landroid/os/AsyncResult;I)I
    .locals 1
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;
    .param p1    # Landroid/os/AsyncResult;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaCallForwardOptions;->handleGetCFMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
    .locals 0
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;
    .param p1    # Lcom/android/phone/CdmaCallForwardOptions$AppState;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/CdmaCallForwardOptions;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    return p1
.end method

.method private adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V
    .locals 4
    .param p1    # Lcom/android/phone/EditPhoneNumberPreference;
    .param p2    # Z
    .param p3    # I
    .param p4    # Ljava/lang/String;

    sget-boolean v2, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustCFbuttonState epn => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " template =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    if-eqz p2, :cond_3

    if-eqz p4, :cond_2

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-virtual {p0, p3}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaCallForwardOptions;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_3
    invoke-virtual {p1, p4}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0
.end method

.method private final dismissBusyDialog()V
    .locals 2

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissBusyDialog: mIsBusyDialogAvailable => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    :cond_1
    return-void
.end method

.method private handleGetCFMessage(Landroid/os/AsyncResult;I)I
    .locals 6
    .param p1    # Landroid/os/AsyncResult;
    .param p2    # I

    const/16 v4, 0x12c

    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFMessage ar = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "handleGetCFMessage: Error getting CF enable state."

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_1
    const/16 v3, 0xc8

    :goto_0
    return v3

    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFMessage: Error during set call, reason: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v3

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    array-length v3, v0

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "handleGetCFMessage: Error getting CF state, unexpected value."

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_8

    aget-object v3, v0, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCFMessage: CF state successfully queried for reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_7
    aget-object v3, v0, v1

    invoke-direct {p0, p2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V

    :cond_8
    const/16 v3, 0x64

    goto :goto_0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CdmaCallForwardOptions"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private queryAllCFOptions()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "queryAllCFOptions: begin querying call features."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    .locals 2
    .param p1    # Lcom/android/phone/CdmaCallForwardOptions$AppState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState First => requestedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
    .locals 4
    .param p1    # Lcom/android/phone/CdmaCallForwardOptions$AppState;
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v3, 0x64

    const/16 v2, 0x384

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState Second => requestedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msgStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_2

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_6

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_3
    sparse-switch p2, :sswitch_data_0

    :goto_1
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    :goto_2
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_2

    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    :goto_3
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$5;->$SwitchMap$com$android$phone$CdmaCallForwardOptions$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaCallForwardOptions$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_7
    :goto_4
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_7

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_9
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_a

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_4

    :cond_a
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_b

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_4

    :cond_b
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_7

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "setAppState: illegal transition from INPUT_READY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "setAppState: DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_d
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_7

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "setAppState: DIALOG_OPEN => BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    goto :goto_4

    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_10

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "setAppState: INITIAL_QUERY => INITIAL_BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->dismissDialog(I)V

    goto/16 :goto_4

    :pswitch_4
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_13

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "setAppState: BUSY_NETWORK_CONNECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_14
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto/16 :goto_4

    :pswitch_5
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_16

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "setAppState: illegal transition from WAITING_NUMBER_SELECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "setAppState: WAITING_NUMBER_SELECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_17
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V
    .locals 4
    .param p1    # I
    .param p2    # Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v0, 0x1

    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v0, :cond_1

    :goto_0
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCFUIState reason => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "syncCFUIState: Setting UI state consistent with CFU."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f090066

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFU:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "syncCFUIState: Setting UI state consistent with CFB."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f09006b

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFB:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "syncCFUIState: Setting UI state consistent with CFNRy."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f090071

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFNRy:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "syncCFUIState: Setting UI state consistent with CFNRc."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f090077

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFNRc:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v7, 0x0

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v0, v1, :cond_2

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: wrong state, ignoring message from contact picker."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "onActivityResult: bad contact data, no results found."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_5
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_6
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*72"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*90"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*92"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*68"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const v4, 0x7f090061

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "feature_chn_duos_gsm_cdma"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v3}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    :goto_0
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->addPreferencesFromResource(I)V

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate START"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v0, "button_cfu_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v0, "button_cfb_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v0, "button_cfnry_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v0, "button_cfnrc_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v0, "button_cfu_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v0, "button_cfb_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v0, "button_cfnry_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v0, "button_cfnrc_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v0, "cdma_cf_cancelall_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v0, "cdma_cf_busy_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    const-string v0, "cdma_cf_noreply_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    const-string v0, "cdma_cf_notrechable_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    const-string v0, "cdma_cf_unconditional_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v6, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v6, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentFragment(Landroid/app/Fragment;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0904e5

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mContactListIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mContactListIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate icicle => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_a
    if-eqz p1, :cond_12

    const-string v0, "app_state_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    const-string v0, "cdma_cf_busy_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string v0, "cdma_cf_noreply_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string v0, "cdma_cf_notrechable_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string v0, "cdma_cf_unconditional_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string v0, "cdma_cf_cancelall_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string v0, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string v0, "mpreference_int"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_b
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v3, :cond_f

    :cond_c
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->showDialog(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    :cond_e
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_f
    return-void

    :cond_10
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v2}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    goto/16 :goto_0

    :cond_12
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    iput-boolean v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1    # I

    const/4 v8, 0x0

    const v7, 0x7f090085

    const/4 v6, 0x1

    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    const/16 v4, 0x64

    if-eq p1, v4, :cond_1

    const/16 v4, 0x384

    if-ne p1, v4, :cond_2

    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09007b

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    :goto_1
    return-object v1

    :sswitch_0
    iput-boolean v6, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v4, 0x7f09007e

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    const v4, 0x7f09007d

    invoke-virtual {p0, v4}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_3

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_3

    const/16 v4, 0x320

    if-ne p1, v4, :cond_4

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09007c

    sparse-switch p1, :sswitch_data_1

    const v2, 0x7f090081

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_1

    :sswitch_2
    const v2, 0x7f090080

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :sswitch_3
    const v2, 0x7f090084

    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 9
    .param p1    # Lcom/android/phone/EditPhoneNumberPreference;
    .param p2    # I

    iget-object v6, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v7, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v6, v7, :cond_1

    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "onDialogClosed: preference request denied, currently busy."

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, -0x2

    if-ne p2, v6, :cond_3

    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "onDialogClosed: DialogInterface.BUTTON2"

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_2
    sget-object v6, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v6}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    goto :goto_0

    :cond_3
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDialogClosed: preference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " buttonClicked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    instance-of v6, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v6, :cond_0

    move-object v0, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, ""

    invoke-virtual {v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "onDialogClosed: AppState.BUSY_NETWORK_CONNECT"

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "feature_chn_duos_gsm_cdma"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "simSlot"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaCallForwardOptions;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v6, "simSlot"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    const-string v0, "*72"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1

    const-string v0, "*720"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_2

    const-string v0, "*90"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_3

    const-string v0, "*900"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_4

    const-string v0, "*68"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_5

    const-string v0, "*680"

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_6

    const-string v0, "*92"

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_7

    const-string v0, "*920"

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_8

    const-string v0, "*74"

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_9

    const-string v0, "*740"

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_a

    const-string v0, "*730"

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->finish()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_5

    iput v5, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_3

    :cond_1
    move-object v4, p2

    check-cast v4, Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_2
    const v4, 0x102002c

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v7, Lcom/android/phone/CdmaCallForwardOptions$1;

    invoke-direct {v7, p0, v1}, Lcom/android/phone/CdmaCallForwardOptions$1;-><init>(Lcom/android/phone/CdmaCallForwardOptions;Landroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v7, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v4, v7, :cond_8

    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "onPreferencesHierarchyClick: preference request denied, currently busy."

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_4
    move v4, v5

    :goto_1
    return v4

    :cond_5
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_6

    iput v6, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_7

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_0

    const/4 v4, 0x3

    iput v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    goto :goto_0

    :cond_8
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "onPreferencesHierarchyClick: request preference click."

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_9
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    instance-of v4, p2, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v4, :cond_b

    :cond_a
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick => nextState = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_b
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_c

    const-string v4, "onPreferenceTreeClick => mButtonCFExpand"

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_c
    sget-object v4, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v2, v4, :cond_e

    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_d

    const-string v4, "onPreferenceTreeClick => != AppState.INPUT_READY"

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_d
    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    move v4, v6

    goto/16 :goto_1

    :cond_e
    move v4, v5

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    const-string v0, "feature_chn_duos_gsm_cdma"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v2}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CdmaCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume Start   mpreferenceint  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_2
    const v0, 0x102002c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Lcom/android/phone/CdmaCallForwardOptions$4;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/CdmaCallForwardOptions$4;-><init>(Lcom/android/phone/CdmaCallForwardOptions;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void

    :cond_4
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getFirstPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreference:Landroid/preference/Preference;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSaveInstanceState: saving relevant UI state."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    const-string v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "cdma_cf_busy_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "cdma_cf_busy_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "cdma_cf_noreply_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "cdma_cf_notrechable_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "cdma_cf_cancelall_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "cdma_cf_unconditional_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    const-string v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mpreference_int"

    iget v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mpreferenceint:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1    # Landroid/content/Intent;
    .param p2    # I

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityForResult intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v0, v1, :cond_3

    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startSubActivity: mAppState != AppState.DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    goto :goto_0
.end method
