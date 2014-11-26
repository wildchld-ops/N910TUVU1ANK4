.class public Lcom/android/phone/PhoneInterfaceManagerExt;
.super Lcom/android/internal/telephony/ITelephonyExt$Stub;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;,
        Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static messengerNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;

.field private static mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

.field private static sInstances:[Lcom/android/phone/PhoneInterfaceManagerExt;

.field private static smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;


# instance fields
.field mApp:Lcom/android/phone/PhoneGlobals;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mMobileInfo:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private final mUpKnightLock:Ljava/lang/Object;

.field private nitzString:Ljava/lang/String;

.field private pendingCount:I

.field private resolvedCount:I

.field private scCmdResult:[B

.field scHandler:Landroid/os/Handler;

.field private final scLock:Ljava/lang/Object;

.field private final scLockForDelay:Ljava/lang/Object;

.field private scLockNotified:Z

.field private scReturnValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v0, Lcom/android/phone/PhoneGlobals;->DBG_LEVEL:I

    if-lt v0, v4, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/PhoneInterfaceManagerExt;->DBG:Z

    new-array v0, v4, [Lcom/android/phone/PhoneInterfaceManagerExt;

    aput-object v3, v0, v2

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->sInstances:[Lcom/android/phone/PhoneInterfaceManagerExt;

    sput-object v3, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1    # Lcom/android/phone/PhoneGlobals;
    .param p2    # Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mUpKnightLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockForDelay:Ljava/lang/Object;

    iput v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->pendingCount:I

    iput v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->resolvedCount:I

    iput-boolean v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockNotified:Z

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerExt$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->publish()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneInterfaceManagerExt;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneInterfaceManagerExt;)[B
    .locals 1
    .param p0    # Lcom/android/phone/PhoneInterfaceManagerExt;

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneInterfaceManagerExt;[B)[B
    .locals 0
    .param p0    # Lcom/android/phone/PhoneInterfaceManagerExt;
    .param p1    # [B

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneInterfaceManagerExt;)I
    .locals 1
    .param p0    # Lcom/android/phone/PhoneInterfaceManagerExt;

    iget v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/PhoneInterfaceManagerExt;I)I
    .locals 0
    .param p0    # Lcom/android/phone/PhoneInterfaceManagerExt;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/PhoneInterfaceManagerExt;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PhoneInterfaceManagerExt;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockNotified:Z

    return p1
.end method

.method private enforceModifyPermission()V
    .locals 3

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "enforceModifyPermission()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private publish()V
    .locals 6

    sget-boolean v3, Lcom/android/phone/PhoneInterfaceManagerExt;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publish: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManagerExt;->log(Ljava/lang/String;)V

    :cond_0
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    const-string v3, "phoneext"

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "phoneext"

    invoke-static {v3, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_2
    const-string v3, "gsm.version.ril-impl"

    const-string v4, "Qualcomm"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Qualcomm"

    const/4 v4, 0x0

    const-string v5, "Qualcomm"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-direct {v3, v4}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :goto_1
    return-void

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "PhoneInterfaceManagerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ril version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public NSRI_requestProc(I[B)[B
    .locals 4

    const-class v1, Lcom/android/phone/PhoneInterfaceManagerExt;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->messengerNSRIStart()V

    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NSRI_Messenger] NSRI_requestProc() ==START==  datalen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;

    invoke-virtual {v0, p2, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->commonNSRIRequestProcCmd([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[NSRI_Messenger] NSRI_requestProc()  ==END== retResult.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method SendToSecRil(Z)V
    .locals 8
    .param p1    # Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x5

    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x24

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/PhoneInterfaceManagerExt;->sendRequestRawToRIL([BLandroid/os/Message;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v4, "PhoneInterfaceManagerExt"

    const-string v5, "IOException in startMobileQualityInfo"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v4, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close outputstream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v4, "PhoneInterfaceManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close outputstream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_2
    throw v4

    :catch_3
    move-exception v2

    const-string v5, "PhoneInterfaceManagerExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close outputstream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public checkNSRIUSIMstate_int()I
    .locals 2

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "[NSRI_SMS] create "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;->start()V

    :cond_0
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "[NSRI_SMS] checkNSRIUsimCmd() ==START==  "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;->checkNSRIUsimCmd()I

    move-result v0

    return v0
.end method

.method public getActiveCallsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallBaseTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallerLocator(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUATI()[B
    .locals 5

    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "getCurrentUATI()"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    :goto_0
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "getCurrentUATI Good Job"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    :cond_0
    sget-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v3, 0xc

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_1
    new-instance v2, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v2, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0

    :cond_2
    const-string v2, "PhoneInterfaceManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1
.end method

.method public getHoldCallsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1    # Ljava/lang/String;

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const-string v6, "PhoneInterfaceManagerExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIpAddressFromLinkProp nwkType :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "MOBILE"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v5

    :cond_0
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "PhoneInterfaceManagerExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIpAddressFromLinkProp: inetAddress IP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_2
    const-string v6, "0.0.0.0.0.0.0.0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "PhoneInterfaceManagerExt"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getLteCellInfo()Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    const-string v6, "LGT"

    const-string v7, "TMO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const-string v6, "PhoneInterfaceManagerExt"

    const-string v7, "getLteCellInfo() "

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, v3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    :cond_2
    :goto_2
    const-string v5, "PhoneInterfaceManagerExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :catch_0
    move-exception v2

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v6, v7, v5}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    instance-of v5, v3, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getLteCellId()I

    move-result v1

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getLteTac()I

    move-result v4

    goto :goto_2
.end method

.method public getMobileQualityInformation()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    :goto_0
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getMobileQualityInformation Good Job"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    :cond_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v1, 0x16

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mMobileInfo:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mMobileInfo:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getMsisdnavailable()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPin2LockKey()I
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getLockPin2Key()I

    move-result v0

    return v0
.end method

.method public getPinLockKey()I
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getLockPinKey()I

    move-result v0

    return v0
.end method

.method public getSimPin2Retry()I
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPin2Retry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->featureSimSlot(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin2RetryCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPin2Retry()I

    move-result v0

    goto :goto_0
.end method

.method public getSimPinRetry()I
    .locals 2

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPinRetry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->featureSimSlot(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v0

    goto :goto_0
.end method

.method public getSimPuk2Retry()I
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPuk2Retry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->featureSimSlot(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk2retryCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPuk2Retry()I

    move-result v0

    goto :goto_0
.end method

.method public getSimPukRetry()I
    .locals 2

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPukRetry()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->featureSimSlot(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccPuk1RetryCount()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPukRetry()I

    move-result v0

    goto :goto_0
.end method

.method public getTelephonyFeature()Ljava/util/Map;
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTelephonyFeature"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .locals 3

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTimeInfo() "

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    :goto_0
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTimeInfo Good Job"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    :cond_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->nitzString:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0
.end method

.method public getWipiSysInfo()Ljava/lang/String;
    .locals 4

    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "getWipiSysInfo() "

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    :goto_0
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "getWipiSysInfo Good Job"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    :cond_0
    sget-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v2, 0x16

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v1, v2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v1, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_0
.end method

.method public isBluetoothAudioConnected()Z
    .locals 4

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnected entered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothManager()Lcom/android/phone/BluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "PhoneInterfaceManagerExt"

    const-string v2, "isBluetoothAudioConnected entered"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isConferenceCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDualBTConnection()Z
    .locals 4

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idDualBTConnection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->isDualHfConnected()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirstCallDialingAndSecondCallActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHeadsetConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetConnected()Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSessionModifyProgressing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->isSessionModifyProgressing(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    return v0
.end method

.method public isSimFDNEnabled()Z
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "isSimFDNEnabled()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->isSimFDNEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isSimFDNEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isSimFDNEnabledDs(I)Z
    .locals 3
    .param p1    # I

    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimFDNEnabledDs() subscription:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneGlobals;->isSimFDNEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    return v0
.end method

.method public messengerNSRIStart()V
    .locals 2

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "[NSRI_Messenger] messengerNSRIStart"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->messengerNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$MessengerNSRI;->start()V

    :cond_0
    return-void
.end method

.method public notifyVoIPCallStateChangeIntoBT()V
    .locals 4

    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "notifyVoIPCallStateChangeIntoBT entered"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothVoIPService()Landroid/bluetooth/IBluetoothHeadsetVoIP;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "notifyVoIPCallStateChangeIntoBT bluetoothVoIP is not null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetVoIP;->handleVoipCallStateChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "notifyVoIPCallStateChangeIntoBT exit"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "cannot access notifyVoIPCallStateChangeIntoBT"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "PhoneInterfaceManagerExt"

    const-string v3, "bluetoothVoIP is null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDtmf(C)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setSendDtmf(Z)V

    return v3
.end method

.method public sendRequestRawToRIL([BLandroid/os/Message;)I
    .locals 1
    .param p1    # [B
    .param p2    # Landroid/os/Message;

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendRequestToRIL([B[BI)I
    .locals 16
    .param p1    # [B
    .param p2    # [B
    .param p3    # I

    const/4 v10, 0x6

    move/from16 v0, p3

    if-ne v0, v10, :cond_0

    const/4 v10, 0x5

    aget-byte v10, p1, v10

    const/16 v11, 0x70

    if-ne v10, v11, :cond_0

    const/4 v9, -0x3

    :goto_0
    return v9

    :cond_0
    const/4 v10, 0x1

    move/from16 v0, p3

    if-eq v0, v10, :cond_1

    const/4 v10, 0x3

    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v10, v0, v11}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockForDelay:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->pendingCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->pendingCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->pendingCount:I

    const-string v10, "PhoneInterfaceManagerExt"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendRequestToRIL > Enqueued number is - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Total "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->pendingCount:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->resolvedCount:I

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " remained"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/4 v10, 0x1

    if-le v6, v10, :cond_4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->resolvedCount:I

    add-int/lit8 v10, v10, 0x1

    if-eq v6, v10, :cond_4

    add-int/lit8 v7, v7, 0x1

    const/16 v10, 0x64

    if-le v7, v10, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->resolvedCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->resolvedCount:I

    const/4 v9, -0x4

    goto :goto_0

    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockForDelay:Ljava/lang/Object;

    monitor-enter v11

    :try_start_2
    const-string v10, "PhoneInterfaceManagerExt"

    const-string v12, "sendRequestToRIL > scLockForDelay.wait(500)"

    invoke-static {v10, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockForDelay:Ljava/lang/Object;

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    :try_start_3
    monitor-exit v11

    goto :goto_1

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    :catch_0
    move-exception v3

    :try_start_4
    const-string v10, "PhoneInterfaceManagerExt"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Interrupted while trying to send request to RIL : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :cond_4
    const-string v10, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendRequestToRIL > Queue "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Got arg0 - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendRequestToRIL > Queue "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Got arg1 - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendRequestToRIL > Queue "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Got arg2 - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x7

    move/from16 v0, p3

    if-ne v0, v10, :cond_a

    :try_start_5
    move-object/from16 v0, p1

    array-length v10, v0

    add-int/lit8 v10, v10, -0x6

    new-array v2, v10, [B

    const/4 v10, 0x0

    const/4 v11, 0x4

    aget-byte v11, p1, v11

    aput-byte v11, v2, v10

    const/4 v4, 0x6

    :goto_3
    move-object/from16 v0, p1

    array-length v10, v0

    div-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x2

    if-ge v4, v10, :cond_5

    add-int/lit8 v10, v4, -0x5

    aget-byte v11, p1, v4

    aput-byte v11, v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/16 v10, 0x11

    move-object/from16 v0, p1

    array-length v11, v0

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p1, v11

    aput-byte v11, v2, v10

    move-object/from16 v0, p1

    array-length v10, v0

    div-int/lit8 v10, v10, 0x2

    add-int/lit8 v4, v10, 0x4

    :goto_4
    move-object/from16 v0, p1

    array-length v10, v0

    if-ge v4, v10, :cond_6

    add-int/lit8 v10, v4, -0x6

    aget-byte v11, p1, v4

    aput-byte v11, v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    array-length v10, v2

    mul-int/lit8 v10, v10, 0x2

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_5
    array-length v10, v2

    if-ge v4, v10, :cond_7

    aget-byte v10, v2, v4

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v1, v10, 0xf

    const-string v10, "0123456789abcdef"

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v10, v2, v4

    and-int/lit8 v1, v10, 0xf

    const-string v10, "0123456789abcdef"

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v10, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nonce = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockNotified:Z

    const/4 v10, -0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scHandler:Landroid/os/Handler;

    move/from16 v0, p3

    invoke-virtual {v11, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v10, v0, v11}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    const-string v10, "PhoneInterfaceManagerExt"

    const-string v11, "sendRequestToRIL > sent invokeOemRilRequestRaw"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockNotified:Z

    if-nez v10, :cond_b

    const-string v10, "PhoneInterfaceManagerExt"

    const-string v12, "sendRequestToRIL > scLock.wait()"

    invoke-static {v10, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLock:Ljava/lang/Object;

    const-wide/32 v12, 0xc350

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_7
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v10, "PhoneInterfaceManagerExt"

    const-string v11, "sendRequestToRIL > scLock.wait() released"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x6

    move/from16 v0, p3

    if-ne v0, v10, :cond_c

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    if-ltz v10, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    move-object/from16 v0, p2

    invoke-static {v10, v11, v0, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    const-string v10, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendRequestToRIL > Responded number is - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Got Response!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockForDelay:Ljava/lang/Object;

    monitor-enter v11

    :try_start_8
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->resolvedCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->resolvedCount:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->pendingCount:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->resolvedCount:I

    if-gt v10, v12, :cond_9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->pendingCount:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->resolvedCount:I

    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockForDelay:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    const-string v10, "PhoneInterfaceManagerExt"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendRequestToRIL > Finished number is - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Total "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->pendingCount:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->resolvedCount:I

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " remained"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v10

    :cond_a
    const/4 v10, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockNotified:Z

    const/4 v10, -0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scHandler:Landroid/os/Handler;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v10, v0, v11}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v3

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scLockNotified:Z

    const-string v10, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Interrupted while trying to send request to RIL : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_b
    :try_start_a
    const-string v10, "PhoneInterfaceManagerExt"

    const-string v12, "sendRequestToRIL > scLock.wait() skipped"

    invoke-static {v10, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_7

    :catch_2
    move-exception v3

    :try_start_b
    const-string v10, "PhoneInterfaceManagerExt"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Interrupted while trying to send request to RIL : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catchall_3
    move-exception v10

    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v10

    :cond_c
    const/4 v10, 0x2

    move/from16 v0, p3

    if-ne v0, v10, :cond_8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scReturnValue:I

    if-ltz v10, :cond_8

    const-string v10, "PhoneInterfaceManagerExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Getting ATR size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x106

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    const/4 v15, 0x0

    aget-byte v14, v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p2

    invoke-static {v10, v11, v0, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_8
.end method

.method public setBTUserWantsAudioOn(Z)V
    .locals 4
    .param p1    # Z

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBTUserWantsAudioOn : flag("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    goto :goto_0
.end method

.method public setBTUserWantsSwitchAudio()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    const-string v1, "PhoneInterfaceManagerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBTUserWantsSwitchAudio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->switchAudio()Z

    :cond_0
    return-void
.end method

.method public setDmCmd(I[B)[I
    .locals 8

    const/16 v7, 0x16

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [I

    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    const-string v4, "UKnight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDmCmd - code :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v4, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v4, v5}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v4, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    :goto_1
    sget-object v4, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v4}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->start()V

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_2
    return-object v3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v4, v5}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;-><init>(Lcom/samsung/android/sec_platform_library/FactoryPhone;)V

    sput-object v4, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    goto :goto_1

    :pswitch_0
    sget-object v4, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v5, 0x62

    invoke-virtual {v4, v7, v5, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_4

    const-string v0, "UKnight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LOG_SET - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    aput v2, v3, v1

    aput v2, v3, v2

    goto :goto_2

    :cond_5
    aput v1, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v1

    goto :goto_2

    :pswitch_1
    sget-object v4, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v5, 0x63

    invoke-virtual {v4, v7, v5, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_6

    const-string v0, "UKnight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SET - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v0, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aput v2, v3, v1

    aput v2, v3, v2

    goto :goto_2

    :cond_7
    aput v1, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v1

    goto :goto_2

    :pswitch_2
    sget-object v4, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v5, 0x64

    invoke-virtual {v4, v7, v5, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_8

    const-string v0, "UKnight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE_CHANGE_SET - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v0, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    aput v2, v3, v1

    aput v2, v3, v2

    goto/16 :goto_2

    :cond_9
    aput v1, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v1

    goto/16 :goto_2

    :pswitch_3
    sget-object v4, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v5, 0x65

    invoke-virtual {v4, v7, v5, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_a

    const-string v0, "UKnight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEM_SET - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string v0, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    aput v2, v3, v1

    aput v2, v3, v2

    goto/16 :goto_2

    :cond_b
    aput v1, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v1

    goto/16 :goto_2

    :pswitch_4
    sget-object v4, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v5, 0x66

    invoke-virtual {v4, v7, v5, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_c

    const-string v0, "UKnight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEM_CHECK - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :try_start_0
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    aput v1, v3, v1

    aput v1, v3, v2

    goto/16 :goto_2

    :pswitch_5
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mUpKnightLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    const-string v5, "ril.dmlog.completed"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    const/16 v6, 0x16

    const/16 v7, 0x67

    invoke-virtual {v5, v6, v7, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->getInfo(II[B)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/phone/PhoneInterfaceManagerExt;->mobileInfo:Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;

    invoke-virtual {v6}, Lcom/android/phone/PhoneInterfaceManagerExt$CommToRILThread;->waitDmLogSync()V

    if-eqz v0, :cond_d

    const-string v0, "UKnight"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAVE_LOG - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    aput v2, v3, v1

    aput v2, v3, v2

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

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

.method public setMute(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public showPopupCallScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showingIncomingPopup()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-boolean v0, v0, Lcom/android/phone/PhoneGlobals;->mShowingIncomingPopup:Z

    return v0
.end method

.method public sms_NSRI_decryptsms(I[B)[B
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;->start()V

    :cond_0
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NSRI_SMS] sms_NSRI_decryptsms() ==START==  in_len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    invoke-virtual {v0, p2, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;->smsNSRIDecryptCmd([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    return-object v0
.end method

.method public sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;->start()V

    :cond_0
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NSRI_SMS] sms_NSRI_decryptsmsintxside() ==START==  in_len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  phonenumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    invoke-virtual {v0, p2, p3, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;->smsNSRIDecryptTxCmd(Ljava/lang/String;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    return-object v0
.end method

.method public sms_NSRI_encryptsms(ILjava/lang/String;[B)[B
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;->start()V

    :cond_0
    const-string v0, "PhoneInterfaceManagerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NSRI_SMS] sms_NSRI_encryptsms() ==START==  in_len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  phonenumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerExt;->smsNSRI:Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;

    invoke-virtual {v0, p2, p3, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$SmsNSRI;->smsNSRIEncryptCmd(Ljava/lang/String;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->scCmdResult:[B

    return-object v0
.end method

.method public startMobileQualityInformation()V
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "startMobileQualityInformation at INFINEON chip"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "kor_infineon_chip"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManagerExt;->SendToSecRil(Z)V

    :cond_0
    return-void
.end method

.method public stopMobileQualityInformation()V
    .locals 2

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "stopMobileQualityInformation at INFINEON chip"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "kor_infineon_chip"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManagerExt;->SendToSecRil(Z)V

    :cond_0
    return-void
.end method

.method public supplyPerso(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;-><init>(Lcom/android/phone/PhoneInterfaceManagerExt;Lcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->start()V

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckIccPerso;->checkPerso(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPin2(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->start()V

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->checkPin2(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;-><init>(Lcom/android/internal/telephony/IccCard;)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->start()V

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->checkPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public switchHoldingAndActive()V
    .locals 0

    return-void
.end method

.method public turnOnBluetooth()V
    .locals 0

    return-void
.end method

.method public turnOnSpeaker(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public updateRAFTproximity(I)V
    .locals 2
    .param p1    # I

    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "updateRAFTproximity"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
